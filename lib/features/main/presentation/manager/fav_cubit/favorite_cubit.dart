import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nti_graduation_app/features/main/data/model/fav_model.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteSuccess(favoriteItems: const []));
  final List<FavoriteModel> favoriteItems = [];
  void addFav(FavoriteModel item) {
    try {
      if (favoriteItems.any((i) => i.name == item.name)) return;
      favoriteItems.add(item);
      log('complete add ================${favoriteItems.length}');
      emit(FavoriteSuccess(favoriteItems: favoriteItems));
    } catch (e) {
      emit(FavoriteFailure(errorMessage: e.toString()));
    }
  }

  bool isFavorite(String name) {
    try {
      log('isFavorite =============== true');
      return favoriteItems.any((i) => i.name == name);
    } catch (e) {
      emit(FavoriteFailure(errorMessage: e.toString()));
      return false;
    }
  }

  void deleteFav({required String name}) {
    try {
      if (favoriteItems.isEmpty) return;

      favoriteItems.removeWhere((i) => i.name == name);
      final List<FavoriteModel> favoriteItem = favoriteItems;
      log('complete delete ================${favoriteItems.length}');
      emit(FavoriteSuccess(favoriteItems: favoriteItem));
    } catch (e) {
      emit(FavoriteFailure(errorMessage: e.toString()));
    }
  }

  List<FavoriteModel> getFav() {
    return favoriteItems;
  }
}
