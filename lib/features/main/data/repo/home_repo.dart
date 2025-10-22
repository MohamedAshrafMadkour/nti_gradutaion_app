import 'package:dartz/dartz.dart';
import 'package:nti_graduation_app/core/error/failure.dart';
import 'package:nti_graduation_app/features/main/data/model/category_products_model/category_products_model.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
import 'package:nti_graduation_app/features/main/data/model/recommended_model/recommended_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CategoryProductsModel>>> getCategoryProducts({
    required String endPoint,
  });
  Future<Either<Failure, List<RecommendedModel>>> getRecommendedProducts();
  Future<Either<Failure, List<CategoryProductsModel>>> getClothes();
  Future<Either<Failure, List<ProductModel>>> getCart();
}
