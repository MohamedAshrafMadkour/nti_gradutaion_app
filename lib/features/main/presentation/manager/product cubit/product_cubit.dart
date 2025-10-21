import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitial());
  final HomeRepo homeRepo;
  Future<void> getProduct({required String endPoint}) async {
    emit(ProductLoading());
    final result = await homeRepo.getProducts(endPoint: endPoint);
    result.fold(
      (failure) {
        emit(ProductFailure(errMessage: failure.errorMessage));
        log(failure.errorMessage);
      },
      (product) {
        emit(ProductSuccess(products: product));
        log(product.toString());
      },
    );
  }
}
