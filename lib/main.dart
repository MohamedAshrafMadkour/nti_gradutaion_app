import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/helper/get_it_setup.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/fav_cubit/favorite_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/main_view.dart';
import 'package:nti_graduation_app/features/splash/prsentation/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getItSetup();
  runApp(const NtiGraduationApp());
}

class NtiGraduationApp extends StatelessWidget {
  const NtiGraduationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(),
      child: MaterialApp(
        title: 'nti_graduation_app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const SplashView(),
      ),
    );
  }
}
