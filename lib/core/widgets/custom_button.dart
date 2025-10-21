import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    super.key,
    this.color,
  });
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.kPrimaryColor,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
