import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/loading/clothes_loading.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/clothes_cubit/clothes_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/product_card.dart';

class ClothesList extends StatelessWidget {
  const ClothesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.28,
      child: BlocBuilder<ClothesCubit, ClothesState>(
        builder: (context, state) {
          if (state is ClothesSuccess) {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemCount: state.productsList.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, i) {
                final list = state.productsList[i];
                return ProductCard(categoryProductModel: list);
              },
            );
          } else if (state is ClothesFailure) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return ClothesLoadingWidget();
          }
        },
      ),
    );
  }
}
