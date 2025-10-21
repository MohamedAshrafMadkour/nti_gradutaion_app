import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/function/custom_snack_bar.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/fav_item_card.dart';

class FavView extends StatefulWidget {
  const FavView({super.key});

  @override
  State<FavView> createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {
  void removeFavorite(int index) {
    setState(() => favoriteItems.removeAt(index));
    customSnackBar(context, isAdded: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondAppBar(title: 'Favorites'),
      body: favoriteItems.isEmpty
          ? const Center(
              child: Text(
                'No favorites yet ❤️',
                style: TextStyle(fontSize: 18),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.9,
              ),
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final item = favoriteItems[index];
                return FavItemCard(
                  item: item,
                  onRemove: () => removeFavorite(index),
                );
              },
            ),
    );
  }
}
