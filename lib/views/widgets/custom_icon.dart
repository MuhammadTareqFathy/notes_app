import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    this.backColor,
    this.outBorder,
    required this.iconData,
    this.size,
    this.onPressed,
  });
  final WidgetStateProperty<Color>? backColor;
  final WidgetStateProperty<OutlinedBorder>? outBorder;
  final IconData iconData;
  final double? size;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: size,
      style: ButtonStyle(
        backgroundColor: backColor,
        shape: outBorder,
      ),
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
