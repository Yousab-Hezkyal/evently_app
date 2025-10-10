import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String name;
  final IconData icon;
  final String imagePath;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.imagePath,
  });

  static const List<CategoryModel> categories = [
    CategoryModel(
      id: 0,
      name: "All",
      icon: Icons.all_inclusive_outlined,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 1,
      name: "Sports",
      icon: Icons.sports_football_outlined,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 2,
      name: "Birthday",
      icon: Icons.cake_outlined,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 3,
      name: "Meeting",
      icon: Icons.laptop,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 4,
      name: "Gaming",
      icon: Icons.sports_esports_outlined,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 5,
      name: "Eating",
      icon: Icons.local_pizza_outlined,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 6,
      name: "Holiday",
      icon: Icons.holiday_village_outlined,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 7,
      name: "Exhibition",
      icon: Icons.water_drop_outlined,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 8,
      name: "Workshop",
      icon: Icons.work_outline,
      imagePath: "imagePath",
    ),
    CategoryModel(
      id: 9,
      name: "Book Club",
      icon: Icons.menu_book_rounded,
      imagePath: "imagePath",
    ),
  ];
}
