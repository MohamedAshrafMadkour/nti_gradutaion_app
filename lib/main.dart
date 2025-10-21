import 'package:flutter/material.dart';
import 'package:nti_graduation_app/features/main/presentation/views/main_view.dart';

void main() {
  runApp(const NtiGraduationApp());
}

class NtiGraduationApp extends StatelessWidget {
  const NtiGraduationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nti_graduation_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainView(),
    );
  }
}
