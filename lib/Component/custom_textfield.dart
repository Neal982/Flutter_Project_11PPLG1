import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtController;
  final String hint;
  final Color textColor;

  const CustomTextfield(
    this.textColor, {
    super.key,
    required this.txtController,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: textColor.withOpacity(0.5)),
      ),
    );
  }
}
