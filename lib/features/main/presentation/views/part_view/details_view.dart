import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/core/widgets/custom_button.dart';
import 'package:nti_graduation_app/core/widgets/custom_cached_network_image.dart';

class DetailsView extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final String description;

  const DetailsView({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
    super.key,
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
            CustomCachedNetworkImage(image: imageUrl),
            const SizedBox(height: 20),

            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Text(
              price,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              description,
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
