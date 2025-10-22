import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/function/custom_snack_bar.dart';
import 'package:nti_graduation_app/features/main/data/model/fav_model.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/fav_cubit/favorite_cubit.dart';

class CustomFavIcon extends StatelessWidget {
  const CustomFavIcon({
    required this.iconSize,
    required this.item,
    super.key,
  });

  final double iconSize;
  final FavoriteModel item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        if (state is! FavoriteSuccess) return const SizedBox();
        final isFav = state.favoriteItems.any((i) => i.name == item.name);
        return InkWell(
          onTap: () {
            if (isFav) {
              context.read<FavoriteCubit>().deleteFav(name: item.name);
              customSnackBar(context, isAdded: false);
            } else {
              context.read<FavoriteCubit>().addFav(item);
              customSnackBar(context, isAdded: true);
            }
          },
          child: Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            color: isFav ? Colors.red : Colors.grey,
            size: iconSize,
          ),
        );
      },
    );
  }
}
