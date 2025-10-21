import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/product%20cubit/product_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/product_card.dart';

class HorizontalProducts extends StatelessWidget {
  const HorizontalProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductSuccess) {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemCount: state.products.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, i) {
                final p = state.products[i];
                return ProductCard(
                  productModel: p,
                );
              },
            );
          } else if (state is ProductFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
