import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: false,
    primaryColor: AppColors.blueberry,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.blueberry,
      onPrimary: AppColors.blueberry,
      secondary: AppColors.iceBlue,
    ),
    scaffoldBackgroundColor: AppColors.iceBlue,
    iconTheme: IconThemeData(color: AppColors.black, size: 24.sp),
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
    inputDecorationTheme: InputDecorationTheme(
      iconColor: AppColors.gray,
      labelStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      ),
      hintStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.gray,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(width: 1.w, color: AppColors.gray),
      ),
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
    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.blueberry,
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      selectedItemColor: AppColors.iceBlue,
      unselectedItemColor: AppColors.iceBlue,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 2.0.h,
      backgroundColor: AppColors.blueberry,
      shape: StadiumBorder(
        side: BorderSide(width: 4.w, color: AppColors.iceBlue),
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.iceBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 5,
    ),
    textTheme: TextTheme(
      headlineMedium: GoogleFonts.inter(
        fontSize: 14.sp,
        color: AppColors.iceBlue,
        fontWeight: FontWeight.w500,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        color: AppColors.iceBlue,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.inter(
        color: AppColors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  static ThemeData dark = ThemeData();
}
