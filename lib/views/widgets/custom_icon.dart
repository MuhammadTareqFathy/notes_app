import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    this.backColor,
    this.outBorder,
    required this.icon,
    this.size,
    this.onPressed,
  });
  final WidgetStateProperty<Color>? backColor;
  final WidgetStateProperty<OutlinedBorder>? outBorder;
  final Icon icon;
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
      icon: icon,
    );
  }
}

// WidgetStatePropertyAll(
//             Colors.grey.withOpacity(0.1),
//           ),

//              WidgetStatePropertyAll(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//           ),

//           const Icon(Icons.search)