import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/function/custom_app_bar.dart';
import 'package:nti_graduation_app/core/service/api_service.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo_impl.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/product%20cubit/product_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductCubit(HomeRepoImpl(apiService: ApiService(dio: Dio())))
            ..getProduct(endPoint: ''),
      child: Scaffold(
        appBar: customAppBar(),
        body: HomeViewBody(),
      ),
    );
  }
}
