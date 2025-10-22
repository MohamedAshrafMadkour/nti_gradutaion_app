import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nti_graduation_app/features/main/data/model/recommended_model/recommended_model.dart';
import 'package:nti_graduation_app/features/main/data/repo/home_repo.dart';

part 'recommended_state.dart';

class RecommendedCubit extends Cubit<RecommendedState> {
  RecommendedCubit(this.homeRepo) : super(RecommendedInitial());
  final HomeRepo homeRepo;

  Future<void> getRecommendedProducts() async {
    emit(RecommendedLoading());
    final result = await homeRepo.getRecommendedProducts();
    result.fold(
      (failure) => emit(RecommendedFailure(failure.errorMessage)),
      (products) => emit(RecommendedSuccess(products)),
    );
  }
}
