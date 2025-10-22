import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/core/loading/category_details_loading.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/product cubit/product_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/category_card_item.dart';

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondAppBar(title: 'Products'),
      body: BlocBuilder<CategoryProductCubit, CategoryProductState>(
        builder: (context, state) {
          if (state is CategoryProductSuccess) {
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                final item = state.products[index];
                return CategoryItemCard(item: item);
              },
            );
          } else if (state is CategoryProductFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else {
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 10,
              itemBuilder: (context, index) {
                return CategoryItemCardSkeleton();
              },
            );
          }
        },
      ),
    );
  }
}
