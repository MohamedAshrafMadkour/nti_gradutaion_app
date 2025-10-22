import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nti_graduation_app/features/main/data/model/category_products_model/category_products_model.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';

part 'clothes_state.dart';

class ClothesCubit extends Cubit<ClothesState> {
  ClothesCubit(this.homeRepo) : super(ClothesInitial());
  final HomeRepo homeRepo;

  Future<void> getClothes() async {
    emit(ClothesLoading());
    final result = await homeRepo.getClothes();
    result.fold(
      (failure) => emit(ClothesFailure(errorMessage: failure.errorMessage)),
      (products) => emit(ClothesSuccess(productsList: products)),
    );
  }
}
