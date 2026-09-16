import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final TextAlign textAlign;

  const CustomText(
    this.text, {
    super.key,
    required this.textColor,
    required this.fontSize,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(color: textColor, fontSize: fontSize),
    );
  }
}
