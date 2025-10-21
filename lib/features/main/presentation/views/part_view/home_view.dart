import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/function/custom_app_bar.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: HomeViewBody(),
    );
  }
}
