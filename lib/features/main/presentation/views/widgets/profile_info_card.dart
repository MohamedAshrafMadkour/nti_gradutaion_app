import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/widgets/custom_cached_network_image.dart';

class ProfileInfoCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;

  const ProfileInfoCard({
    required this.name,
    required this.email,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 2),
            ),
            child: CustomCachedNetworkImage(
              image: imageUrl,
              borderRadius: BorderRadius.zero,
            ),
          ),
          const SizedBox(height: 16),

          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),
          Text(
            email,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
