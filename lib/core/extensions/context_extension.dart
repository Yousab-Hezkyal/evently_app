import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  T? arg<T>() => ModalRoute.of(this)?.settings.arguments as T?;

  TextTheme get textTheme => Theme.of(this).textTheme;
  Color get primaryColor => Theme.of(this).primaryColor;

  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;

  double dynamicHeight(double val) => height * val;
  double dynamicWidth(double val) => width * val;
}
