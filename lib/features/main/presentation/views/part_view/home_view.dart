import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/function/custom_app_bar.dart';
import 'package:nti_graduation_app/core/helper/get_it_setup.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/clothes_cubit/clothes_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/product%20cubit/product_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/recommended_cubit/recommended_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryProductCubit(
            getIt.get<HomeRepo>(),
          ),
        ),
        BlocProvider(
          create: (context) => RecommendedCubit(
            getIt.get<HomeRepo>(),
          )..getRecommendedProducts(),
        ),
        BlocProvider(
          create: (context) => ClothesCubit(
            getIt.get<HomeRepo>(),
          )..getClothes(),
        ),
      ],
      child: Scaffold(
        appBar: customAppBar(),
        body: HomeViewBody(),
      ),
    );
  }
}
