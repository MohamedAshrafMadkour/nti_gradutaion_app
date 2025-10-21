import 'package:nti_graduation_app/core/service/api_service.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
}
