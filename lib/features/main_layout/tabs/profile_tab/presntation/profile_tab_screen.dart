import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/resoureses/app_images.dart';
import 'package:evently_app/core/theme/app_colors.dart';
import 'package:evently_app/features/main_layout/tabs/profile_tab/widgets/drop_menu_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTabScreen extends StatelessWidget {
  const ProfileTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _profileTabBar,
          Expanded(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    context.l10n!.language,
                    style: context.textTheme.bodyLarge,
                  ),
                  DropMenuSettings(
                    values: ["en", "ar"],
                    labels: ["English", "عربي"],
                    onSelected: (value) {},
                  ),
                  Text(context.l10n!.theme, style: context.textTheme.bodyLarge),
                  DropMenuSettings(
                    values: ["light", "dark"],
                    labels: [context.l10n!.light, context.l10n!.dark],
                    onSelected: (value) {},
                  ),
                  Spacer(flex: 3),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: REdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(Icons.logout),
                          SizedBox(width: 8.w),
                          Text(
                            context.l10n!.logout,
                            style: GoogleFonts.inter(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _profileTabBar {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.blueberry,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64.r)),
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(64.r),
                bottomRight: Radius.circular(64.r),
                topRight: Radius.circular(64.r),
              ),
              child: Image.asset(AppImages.routeImage, fit: BoxFit.cover),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Safwat",
                    style: GoogleFonts.inter(
                      color: AppColors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "johnsafwat.route@gmail.com",
                    style: GoogleFonts.inter(
                      color: AppColors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
