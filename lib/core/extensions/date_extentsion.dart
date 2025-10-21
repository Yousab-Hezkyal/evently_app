import 'package:intl/intl.dart';

extension DateTimeMonthNameExtension on DateTime {
  String get fullMonthName {
    return DateFormat('MMMM').format(this);
  }

  String get shortMonthName {
    return DateFormat('MMM').format(this);
  }

  String get dayNumber {
    return DateFormat('dd').format(this);
  }
}
