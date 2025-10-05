import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    primaryColor: AppColors.blueberry,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blueberry),
    scaffoldBackgroundColor: AppColors.iceBlue,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: GoogleFonts.inter(
        color: AppColors.blueberry,
        fontSize: 24.sp,
      ),
      backgroundColor: AppColors.iceBlue,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.blueberry),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 16.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16.r),
        ),
        backgroundColor: AppColors.blueberry,
        foregroundColor: AppColors.white,
        textStyle: GoogleFonts.inter(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 16.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16.r),
        ),
        side: BorderSide(color: AppColors.blueberry, width: 1),
      ),
    ),
  );

  static ThemeData dark = ThemeData();
}
