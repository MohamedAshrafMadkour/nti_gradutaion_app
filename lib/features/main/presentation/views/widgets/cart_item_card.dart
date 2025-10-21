import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nti_graduation_app/core/widgets/custom_cached_network_image.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';

class CartItemCard extends StatelessWidget {
  final ProductModel item;
  final VoidCallback onRemove;

  const CartItemCard({
    required this.item,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: CustomCachedNetworkImage(image: item.imageUrl),
        title: Text(
          item.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          item.price,
          style: const TextStyle(color: Colors.green),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: onRemove,
        ),
      ),
    ).animate().fadeIn(duration: 400.ms);
  }
}
