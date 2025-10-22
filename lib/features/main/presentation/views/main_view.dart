import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/nav_bar/nav_bar_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/main_scaffold.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavBarCubit(),
        ),
      ],
      child: const MainScaffold(),
    );
  }
}
