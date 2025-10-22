import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/function/custom_snack_bar.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/core/widgets/custom_button.dart';
import 'package:nti_graduation_app/core/widgets/custom_cached_network_image.dart';
import 'package:nti_graduation_app/features/main/data/model/fav_model.dart';
import 'package:nti_graduation_app/features/main/data/model/recommended_model/recommended_model.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/fav_cubit/favorite_cubit.dart';

class RecommendedDetailsView extends StatelessWidget {
  final RecommendedModel productModel;

  const RecommendedDetailsView({
    required this.productModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favCubit = context.read<FavoriteCubit>();
    return Scaffold(
      appBar: secondAppBar(title: 'Details'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCachedNetworkImage(image: productModel.images?[0] ?? ''),
            const SizedBox(height: 20),

            Text(
              productModel.title ?? '',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Text(
              productModel.price.toString(),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              productModel.description ?? '',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            BlocBuilder<FavoriteCubit, FavoriteState>(
              builder: (context, state) {
                final isFav = favCubit.isFavorite(productModel.title ?? '');
                return CustomButton(
                  color: isFav ? Colors.red : Colors.teal,
                  title: isFav ? 'Remove from favorites' : 'Add to favorites',
                  onPressed: () {
                    final favItem = FavoriteModel(
                      name: productModel.title ?? '',
                      price: productModel.price?.toDouble() ?? 0,
                      image: productModel.images?[0] ?? '',
                    );

                    if (isFav) {
                      favCubit.deleteFav(name: productModel.title ?? '');
                      customSnackBar(context, isAdded: false);
                    } else {
                      favCubit.addFav(favItem);
                      customSnackBar(context, isAdded: true);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
