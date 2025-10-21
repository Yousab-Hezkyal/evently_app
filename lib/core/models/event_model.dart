import 'package:evently_app/core/models/category_model.dart';
import 'package:flutter/material.dart';

class EventModel {
  final CategoryModel category;
  final String title;
  final String description;
  final DateTime dateTime;
  final TimeOfDay time;

  EventModel({
    required this.category,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.time,
  });
}
