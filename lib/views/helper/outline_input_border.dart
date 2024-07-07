import 'package:flutter/material.dart';

OutlineInputBorder customOutlineBorder({Color color = Colors.white}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
  );
}
