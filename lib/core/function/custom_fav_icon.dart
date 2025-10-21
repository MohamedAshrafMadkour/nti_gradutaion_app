import 'package:flutter/material.dart';

class CustomFavIcon extends StatefulWidget {
  const CustomFavIcon({required this.iconSize, required this.id, super.key});
  final double iconSize;
  final int id;
  @override
  State<CustomFavIcon> createState() => _CustomFavIconState();
}

bool isFav = false;

class _CustomFavIconState extends State<CustomFavIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
      child: isFav
          ? Icon(
              Icons.favorite_rounded,
              color: Colors.red,
              size: widget.iconSize,
            )
          : Icon(
              Icons.favorite_border_outlined,
              color: Color(0xff777EA5),
              size: widget.iconSize,
            ),
    );
  }
}
