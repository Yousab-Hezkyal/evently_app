import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomFormField extends StatelessWidget {
  const CutomFormField({
    super.key,
    required this.label,
    this.isScure = false,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.validator,
    required this.controller,
  });
  final String label;
  final bool isScure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String? input)? validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(bottom: 16),
      child: TextFormField(
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        obscureText: isScure,
        maxLines: 1,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          label: Text(label),
          labelStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.gray,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: AppColors.gray),
          ),
        ),
      ),
    );
  }
}
