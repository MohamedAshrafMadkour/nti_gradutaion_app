import 'package:flutter/material.dart';
import 'package:nti_graduation_app/core/function/second_app_bar.dart';
import 'package:nti_graduation_app/features/main/data/model/product_model.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/custom_cart_sdection.dart';
import '../widgets/cart_item_card.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  void removeItem(int index) => setState(() => cartItems.removeAt(index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondAppBar(title: 'Cart'),
      body: cartItems.isEmpty
          ? const Center(
              child: Text(
                'Your cart is empty 🛒',
                style: TextStyle(fontSize: 18),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: cartItems.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      return CartItemCard(
                        item: cartItems[index],
                        onRemove: () => removeItem(index),
                      );
                    },
                  ),
                ),
                CustomCartSection(
                  totalPrice: 32323,
                ),
              ],
            ),
    );
  }
}
