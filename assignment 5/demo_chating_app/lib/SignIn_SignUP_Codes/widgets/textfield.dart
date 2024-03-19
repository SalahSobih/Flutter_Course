import 'package:demo_chating_app/AppColors.dart';
import 'package:flutter/material.dart';

class textfied extends StatelessWidget {
  const textfied({
    super.key,
    required this.label,
    required this.prefix,
    this.surfix,
    this.ispassword,
  });
  final String label;
  final Widget prefix;
  final Widget? surfix;
  final bool? ispassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: ispassword ?? false,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: surfix,
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintTextUp),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintTextUp),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorcolor),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorcolor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
