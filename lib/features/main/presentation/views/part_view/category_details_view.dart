import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/features/main/data/model/category_model.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/category_card_item.dart';

class CategoryItemsView extends StatelessWidget {
  final CategoryModel category;

  const CategoryItemsView({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> items = List.generate(10, (index) {
      return ProductModel(
        title: '${category.title} Product ${index + 1}',
        price: '\$${(index + 1) * 20}',
        imageUrl: 'https://picsum.photos/200/200?image=${index + 10}',
      );
    });

    return Scaffold(
      appBar: secondAppBar(title: category.title),
      body: items.isEmpty
          ? const Center(
              child: Text(
                'No items available in this category!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return CategoryItemCard(item: item);
              },
            ),
    );
  }
}
