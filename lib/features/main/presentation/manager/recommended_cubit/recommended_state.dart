part of 'recommended_cubit.dart';

sealed class RecommendedState extends Equatable {
  const RecommendedState();

  @override
  List<Object> get props => [];
}

final class RecommendedInitial extends RecommendedState {}

final class RecommendedSuccess extends RecommendedState {
  final List<RecommendedModel> recommendedList;
  const RecommendedSuccess(this.recommendedList);
  @override
  List<Object> get props => [recommendedList];
}

final class RecommendedFailure extends RecommendedState {
  final String failure;
  const RecommendedFailure(this.failure);
  @override
  List<Object> get props => [failure];
}

final class RecommendedLoading extends RecommendedState {}
