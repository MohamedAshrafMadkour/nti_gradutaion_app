import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/profile_info_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final duration = 600.ms;
    final delay = 200.ms;
    return Scaffold(
      appBar: secondAppBar(title: 'Profile'),
      body:
          Center(
                child: ProfileInfoCard(
                  name: 'Mohamed Madkour',
                  email: 'madkourmohamed88@gmail.com',
                  imageUrl:
                      'https://res.cloudinary.com/dzh2hde2n/image/upload/v1761032424/ubrtczzt1qbziz1m12ah.jpg',
                ),
              )
              .animate(delay: delay)
              .fadeIn(duration: duration, curve: Curves.easeInOut)
              .slideY(begin: 0.3, end: 0, curve: Curves.easeOutBack),
    );
  }
}
