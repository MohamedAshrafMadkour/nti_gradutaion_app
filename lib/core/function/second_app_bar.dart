import 'package:flutter/material.dart';

AppBar secondAppBar({required String title}) {
  return AppBar(
    title: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'My',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ],
    ),
    centerTitle: true,
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
  );
}
