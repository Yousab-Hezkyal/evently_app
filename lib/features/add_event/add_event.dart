import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/models/category_model.dart';
import 'package:evently_app/core/widgets/custom_form_field.dart';
import 'package:evently_app/core/widgets/custom_tab_bar.dart';
import 'package:evently_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  late TextEditingController _tittleController;
  late TextEditingController _descriptionController;
  late CategoryModel selectCateogry = CategoryModel.categories(context)[1];

  @override
  void initState() {
    super.initState();
    _tittleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _tittleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n!.create_event)),
      body: Padding(
        padding: REdgeInsets.only(right: 16.0, left: 16, bottom: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(
                  context.isLightMode
                      ? selectCateogry.lightImage
                      : selectCateogry.darkImage,
                ),
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 16.0),
                child: CustomTabBar(
                  isAll: false,
                  onCategorySeclected: (category) {
                    selectCateogry = category;
                    setState(() {});
                  },
                ),
              ),
              Text(context.l10n!.tittle, style: context.textTheme.bodyMedium),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 8),
                child: CustomFormField(
                  prefixIcon: Icon(Icons.edit_note),
                  hintText: context.l10n!.event_tittle,
                  controller: _tittleController,
                ),
              ),
              Text(
                context.l10n!.description,
                style: context.textTheme.bodyMedium,
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 8),
                child: CustomFormField(
                  maxLines: 5,
                  hintText: context.l10n!.event_description,
                  controller: _descriptionController,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 10.w),
                  Text(
                    context.l10n!.event_date,
                    style: context.textTheme.bodyMedium,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: context.l10n!.choose_date,
                    onTap: () {
                      showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Icon(Icons.access_time_outlined),
                  SizedBox(width: 10.w),
                  Text(
                    context.l10n!.event_time,
                    style: context.textTheme.bodyMedium,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: context.l10n!.choose_time,
                    onTap: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: REdgeInsets.only(top: 16, bottom: 8),
                child: Text(
                  context.l10n!.location,
                  style: context.textTheme.bodyMedium,
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: REdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        color: context.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.my_location,
                            color: context.secondaryColor,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        context.l10n!.choose_location,
                        style: GoogleFonts.inter(
                          color: context.primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: context.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () {},
                child: Text(context.l10n!.add_event),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
