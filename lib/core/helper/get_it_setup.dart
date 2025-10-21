import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nti_graduation_app/core/service/api_service.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo_impl.dart';

var getIt = GetIt.instance;

void getItSetup() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio: Dio()));
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(apiService: getIt.get<ApiService>()),
  );
}
