part of 'product_cubit.dart';

@immutable
sealed class CategoryProductState {}

final class ProductInitial extends CategoryProductState {}

final class CategoryProductSuccess extends CategoryProductState {
  final List<CategoryProductsModel> products;

  CategoryProductSuccess({required this.products});
}

final class ProductLoading extends CategoryProductState {}

final class CategoryProductFailure extends CategoryProductState {
  final String errMessage;

  CategoryProductFailure({required this.errMessage});
}
