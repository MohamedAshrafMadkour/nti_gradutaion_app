import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nti_graduation_app/core/error/failure.dart';
import 'package:nti_graduation_app/core/service/api_service.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts({
    required String endPoint,
  }) async {
    try {
      final result = await apiService.get(
        url: 'https://fakestoreapi.com/products',
        endPoint: endPoint,
      );
      final List<ProductModel> products = [];
      for (var item in result) {
        products.add(ProductModel.fromJson(item));
      }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(dioException: e));
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getCart() async {
    try {
      final result = await apiService.get(
        url: 'https://fakestoreapi.com/carts',
        endPoint: '',
      );
      final List<ProductModel> cart = [];
      for (var item in result) {
        cart.add(ProductModel.fromJson(item));
      }
      return right(cart);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(dioException: e));
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
