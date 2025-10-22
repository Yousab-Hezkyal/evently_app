import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

abstract class Validators {
  static String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.l10n!.empty_email_error;
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return context.l10n!.email_error;
    }

    return null;
  }

  static String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.l10n!.empty_pass_error;
    }
    final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{6,}$',
    );
    if (!passwordRegex.hasMatch(value)) {
      return context.l10n!.pass_error;
    }
    return null;
  }

  static String? validateRePassword(
    String? value,
    String? checkValue,
    BuildContext context,
  ) {
    if (value == null || value.isEmpty) {
      return context.l10n!.empty_re_pass_error;
    }
    if (value != checkValue) {
      return context.l10n!.re_pass_error;
    }
    return null;
  }

  static String? validateUsername(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.l10n!.empty_name_error;
    }
    if (value.length < 4) {
      return context.l10n!.name_error;
    }
    return null;
  }
}
