import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTap: widget.onTap,
      child: Text(
        widget.text,
        textAlign: TextAlign.end,
        style: GoogleFonts.inter(
          color: _isPressed ? AppColors.pressedButton : context.primaryColor,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
