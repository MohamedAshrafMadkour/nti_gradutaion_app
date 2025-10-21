import 'package:dartz/dartz.dart';
import 'package:nti_graduation_app/core/error/failure.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';

abstract class HomeRepo {
  // دا الشكل اللي المفروض تشتغل عليع كل حاحة جاهزة حتي الباكجات في الاغلب موجودة
  Future<Either<Failure, List<ProductModel>>> getProducts({
    required String endPoint,
  });
  Future<Either<Failure, List<ProductModel>>> getCart();
}
