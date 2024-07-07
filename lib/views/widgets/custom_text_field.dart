import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/helper/outline_input_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.onSubmitted,
    this.maxLines = 1,
  });
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onSubmitted;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        contentPadding: contentPadding,
        border: customOutlineBorder(),
        enabledBorder: customOutlineBorder(),
        focusedBorder: customOutlineBorder(color: kPrimaryColor),
      ),
    );
  }
}
