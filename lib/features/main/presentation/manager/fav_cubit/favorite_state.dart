part of 'favorite_cubit.dart';

sealed class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object> get props => [];
}

final class FavoriteInitial extends FavoriteState {}

final class FavoriteSuccess extends FavoriteState {
  final List<FavoriteModel> favoriteItems;
  const FavoriteSuccess({required this.favoriteItems});
}

final class FavoriteFailure extends FavoriteState {
  final String errorMessage;
  const FavoriteFailure({required this.errorMessage});
}

final class FavoriteDelete extends FavoriteState {}
