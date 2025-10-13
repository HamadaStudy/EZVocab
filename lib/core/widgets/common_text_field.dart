import 'package:ezvocab/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            color: AppStyles.primaryColor,
            width: 2.0,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
      ),
      cursorColor: AppStyles.primaryColor,
    );
  }
}
