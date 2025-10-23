import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nti_graduation_app/core/error/failure.dart';
import 'package:nti_graduation_app/core/widgets/api_service.dart';
import 'package:nti_graduation_app/features/main/data/model/category_products_model/category_products_model.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
import 'package:nti_graduation_app/features/main/data/model/recommended_model/recommended_model.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<CategoryProductsModel>>> getCategoryProducts({
    required String endPoint,
  }) async {
    try {
      final result = await apiService.get(
        url: 'https://dummyjson.com/products/category/',
        endPoint: endPoint,
      );
      final List<CategoryProductsModel> categoryProductsList = [];
      for (var item in result['products']) {
        categoryProductsList.add(CategoryProductsModel.fromJson(item));
      }
      return right(categoryProductsList);
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

  @override
  Future<Either<Failure, List<RecommendedModel>>>
  getRecommendedProducts() async {
    try {
      final result = await apiService.get(
        url: 'https://api.escuelajs.co/api/v1/',
        endPoint: 'products',
      );
      final List<RecommendedModel> recommendedList = result
          .map<RecommendedModel>((e) => RecommendedModel.fromJson(e))
          .toList();
      return right(recommendedList);
    } catch (e) {
      log(e.toString());
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
  Future<Either<Failure, List<CategoryProductsModel>>> getClothes() async {
    try {
      final result = await apiService.get(
        url: 'https://dummyjson.com/products/category/',
        endPoint: 'tops',
      );
      final List<CategoryProductsModel> categoryProductsList = [];
      for (var item in result['products']) {
        categoryProductsList.add(CategoryProductsModel.fromJson(item));
      }
      return right(categoryProductsList);
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
