import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/features/main/presentation/manager/fav_cubit/favorite_cubit.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/fav_item_card.dart';

class FavView extends StatefulWidget {
  const FavView({super.key});

  @override
  State<FavView> createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {
  @override
  void initState() {
    BlocProvider.of<FavoriteCubit>(context).getFav();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondAppBar(title: 'Favorites'),
      body: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          if (state is FavoriteSuccess) {
            log(state.favoriteItems.toString());
            return state.favoriteItems.isEmpty
                ? const Center(
                    child: Text(
                      'No favorites yet ❤️',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                : GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.9,
                        ),
                    itemCount: state.favoriteItems.length,
                    itemBuilder: (context, index) {
                      return FavItemCard(item: state.favoriteItems[index]);
                    },
                  );
          } else if (state is FavoriteFailure) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
