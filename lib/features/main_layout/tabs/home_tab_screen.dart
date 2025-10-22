import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/models/category_model.dart';
import 'package:evently_app/core/models/event_model.dart';
import 'package:evently_app/core/widgets/custom_event_card.dart';
import 'package:evently_app/core/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHomeBar,
        SizedBox(height: 16.h),
        Expanded(
          child: ListView.separated(
            padding: REdgeInsets.only(right: 16, left: 16, top: 0, bottom: 100),
            itemBuilder: (context, index) => CustomEventCard(
              eventModel: EventModel(
                category: CategoryModel.categories(context)[3],
                title: 'Meeting for Updating The Development Method ',
                description: 'Meeting for Updating The D evelopment Method ',
                dateTime: DateTime.now(),
                time: TimeOfDay.now(),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemCount: 15,
          ),
        ),
      ],
    );
  }

  Widget get _buildHomeBar {
    return Container(
      padding: REdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.onPrimaryColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
      ),
      child: SafeArea(
        bottom: false,
        right: false,
        left: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${context.l10n!.welcome} ✨",
                      style: context.textTheme.headlineMedium,
                    ),
                    Text("John Safwat", style: context.textTheme.headlineLarge),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    context.isLightMode ? Icons.light_mode : Icons.dark_mode,
                    color: context.secondaryColor,
                  ),
                ),
                Card(
                  color: context.secondaryColor,
                  child: Padding(
                    padding: REdgeInsets.all(8),
                    child: Text(
                      "EN",
                      style: GoogleFonts.inter(
                        color: context.onPrimaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Icon(Icons.location_on, color: context.secondaryColor),
                SizedBox(width: 6.w),
                Text("Cairo , Egypt", style: context.textTheme.headlineMedium),
              ],
            ),
            SizedBox(height: 12.h),
            CustomTabBar(isAll: true),
          ],
        ),
      ),
    );
  }
}
