import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nti_graduation_app/features/main/data/model/category_products_model/category_products_model.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';

part 'product_state.dart';

class CategoryProductCubit extends Cubit<CategoryProductState> {
  CategoryProductCubit(this.homeRepo) : super(ProductInitial());
  final HomeRepo homeRepo;
  Future<void> getProduct({required String endPoint}) async {
    emit(ProductLoading());
    final result = await homeRepo.getCategoryProducts(endPoint: endPoint);
    result.fold(
      (failure) {
        emit(CategoryProductFailure(errMessage: failure.errorMessage));
        log(failure.errorMessage);
      },
      (product) {
        emit(CategoryProductSuccess(products: product));
        log(product.toString());
      },
    );
  }
}
