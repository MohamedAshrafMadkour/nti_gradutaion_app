import 'package:flutter/material.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
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
            productModel: ProductModel(
              id: 3,
              description: 'description',
              title: 'title',
              price: 32323,
              imageUrl:
                  'https://sm.pcmag.com/t/pcmag_mear/review/l/lenovo-ide/lenovo-ideapad-3i-15-2022_771j.1920.jpg',
            ),
          );
        },
      ),
    );
  }
}
