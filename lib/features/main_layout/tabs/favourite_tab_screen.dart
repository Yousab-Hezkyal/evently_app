import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/models/category_model.dart';
import 'package:evently_app/core/models/event_model.dart';
import 'package:evently_app/core/widgets/custom_event_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteTabScreen extends StatelessWidget {
  const FavouriteTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.all(16.0),
              child: TextField(
                style: GoogleFonts.inter(
                  color: context.primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: context.l10n!.search_event,
                  hintStyle: GoogleFonts.inter(
                    color: context.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(Icons.search, color: context.primaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide(
                      color: context.primaryColor,
                      width: 1.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide(
                      color: context.primaryColor,
                      width: 1.w,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: REdgeInsets.only(
                  right: 16,
                  left: 16,
                  top: 0,
                  bottom: 100,
                ),
                itemBuilder: (context, index) => CustomEventCard(
                  eventModel: EventModel(
                    category: CategoryModel.categories(context)[3],
                    title: 'Meeting for Updating The Development Method ',
                    description:
                        'Meeting for Updating The D evelopment Method ',
                    dateTime: DateTime.now(),
                    time: TimeOfDay.now(),
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 12.h),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
