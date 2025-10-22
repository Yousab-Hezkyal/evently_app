import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/extensions/date_extentsion.dart';
import 'package:evently_app/core/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEventCard extends StatefulWidget {
  const CustomEventCard({super.key, required this.eventModel});
  final EventModel eventModel;

  @override
  State<CustomEventCard> createState() => _CustomEventCardState();
}

class _CustomEventCardState extends State<CustomEventCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: context.primaryColor),
        image: DecorationImage(
          image: AssetImage(
            context.isLightMode
                ? widget.eventModel.category.lightImage
                : widget.eventModel.category.darkImage,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: REdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: REdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      widget.eventModel.dateTime.dayNumber,
                      style: GoogleFonts.inter(
                        color: context.primaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.eventModel.dateTime.shortMonthName,
                      style: GoogleFonts.inter(
                        color: context.primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Card(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: REdgeInsets.all(8.0),
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        widget.eventModel.title,
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: context.primaryColor,
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
