import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/core/widgets/custom_button.dart';
import 'package:nti_graduation_app/core/widgets/custom_cached_network_image.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';

class DetailsView extends StatelessWidget {
  final ProductModel productModel;

  const DetailsView({
    required this.productModel, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondAppBar(title: 'Details'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCachedNetworkImage(image: productModel.imageUrl),
            const SizedBox(height: 20),

            Text(
              productModel.title,
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
              productModel.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            CustomButton(
              title: 'Add to Cart',
            ),
            const SizedBox(height: 30),

            CustomButton(
              color: Colors.teal,
              title: 'Add to favorites',
            ),
          ],
        ),
      ),
    );
  }
}
