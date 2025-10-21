import 'package:flutter/material.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/product_card.dart';

class HorizontalProducts extends StatelessWidget {
  final List<Map<String, String>> products;
  const HorizontalProducts({required this.products, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
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
