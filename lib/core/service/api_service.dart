import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future get({required String url, required String? endPoint}) async {
    final response = await dio.get(
      '$url$endPoint',
    );
    return response.data;
  }
}
