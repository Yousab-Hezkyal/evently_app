import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  T? arg<T>() => ModalRoute.of(this)?.settings.arguments as T?;

  AppLocalizations? get l10n => AppLocalizations.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get onPrimaryColor => Theme.of(this).colorScheme.onPrimary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  bool get isLightMode => Theme.of(this).brightness == Brightness.light;

  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;

  double dynamicHeight(double val) => height * val;
  double dynamicWidth(double val) => width * val;
}
