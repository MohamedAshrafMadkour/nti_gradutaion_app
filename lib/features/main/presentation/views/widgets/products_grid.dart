import 'package:flutter/material.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/product_card.dart';

class ProductsGrid extends StatelessWidget {
  final List<Map<String, String>> products;
  const ProductsGrid({required this.products, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (_, i) {
          final p = products[i];
          return ProductCard(
            img: p['img']!,
            title: p['title']!,
            price: p['price']!,
          );
        },
      ),
    );
  }
}
