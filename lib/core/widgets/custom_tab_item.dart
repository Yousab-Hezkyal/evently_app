import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabItem extends StatelessWidget {
  const CustomTabItem({
    super.key,
    required this.categoryModel,
    required this.isSelected,
    required this.isTabBar,
  });
  final CategoryModel categoryModel;
  final bool isSelected;
  final bool isTabBar;

  @override
  Widget build(BuildContext context) {
    final bool effectiveSelected = isTabBar ? isSelected : !isSelected;
    Color mainColor = effectiveSelected
        ? context.onPrimaryColor
        : context.secondaryColor;
    Color background = effectiveSelected
        ? context.secondaryColor
        : context.onPrimaryColor;

    return Container(
      padding: REdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: mainColor),
        borderRadius: BorderRadius.circular(46.r),
        color: background,
      ),
      child: Row(
        children: [
          Icon(categoryModel.icon, color: mainColor),
          SizedBox(width: 8.w),
          Text(
            categoryModel.name,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
