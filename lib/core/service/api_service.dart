import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future get({required String url}) async {
    final response = await dio.get(
      url,
    );
    return response.data;
  }
}
