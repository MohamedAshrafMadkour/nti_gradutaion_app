import 'package:flutter/material.dart';
import 'package:nti_graduation_app/features/main/presentation/views/widgets/custom_search_field.dart';

AppBar customAppBar() {
  return AppBar(
    leading: const Padding(
      padding: EdgeInsets.only(left: 12.0),
      child: Icon(Icons.menu),
    ),
    title: Row(
      children: const [
        Text(
          'e',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          'Bay',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(width: 8),
        Expanded(child: CustomSearchField()),
      ],
    ),
    backgroundColor: Colors.white,
    elevation: 1,
    actions: [
      IconButton(
        icon: const Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
        color: Colors.black87,
      ),
    ],
  );
}
