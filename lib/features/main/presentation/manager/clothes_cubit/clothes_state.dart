part of 'clothes_cubit.dart';

sealed class ClothesState extends Equatable {
  const ClothesState();

  @override
  List<Object> get props => [];
}

final class ClothesInitial extends ClothesState {}

final class ClothesLoading extends ClothesState {}

final class ClothesSuccess extends ClothesState {
  final List<CategoryProductsModel> productsList;
  const ClothesSuccess({required this.productsList});
}

final class ClothesFailure extends ClothesState {
  final String errorMessage;
  const ClothesFailure({required this.errorMessage});
}
