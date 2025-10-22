import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropMenuSettings extends StatelessWidget {
  const DropMenuSettings({
    super.key,
    required this.labels,
    required this.values,
    required this.onSelected,
  });
  final List<String> labels;
  final List<String> values;
  final void Function(String? value) onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 16.0),
      child: DropdownMenu<String>(
        onSelected: onSelected,
        width: double.infinity,
        initialSelection: values[0],
        requestFocusOnTap: false,
        dropdownMenuEntries: List.generate(
          values.length,
          (index) => DropdownMenuEntry(
            value: values[index],
            label: labels[index],
            style: ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(context.primaryColor),
            ),
          ),
        ),
        // dropdownMenuEntries: [
        //   DropdownMenuEntry(
        //     value: values[0],
        //     label: labels[0],
        //     style: ButtonStyle(
        //       foregroundColor: WidgetStatePropertyAll(context.primaryColor),
        //     ),
        //   ),
        //   DropdownMenuEntry(
        //     value: values[1],
        //     label: labels[1],
        //     style: ButtonStyle(
        //       foregroundColor: WidgetStatePropertyAll(context.primaryColor),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
