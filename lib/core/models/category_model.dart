import 'package:evently_app/core/resoureses/app_images.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String name;
  final IconData icon;
  final String lightImage;
  final String darkImage;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.lightImage,
    required this.darkImage,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      id: 0,
      name: "All",
      icon: Icons.all_inclusive_outlined,
      lightImage: "imagePath",
      darkImage: "imagePath",
    ),
    CategoryModel(
      id: 1,
      name: "Sports",
      icon: Icons.sports_football_outlined,
      lightImage: AppImages.sportsLight,
      darkImage: AppImages.sportsDark,
    ),
    CategoryModel(
      id: 2,
      name: "Birthday",
      icon: Icons.cake_outlined,
      lightImage: AppImages.bithdatyLight,
      darkImage: AppImages.bithdatyDark,
    ),
    CategoryModel(
      id: 3,
      name: "Meeting",
      icon: Icons.laptop,
      lightImage: AppImages.meetingLight,
      darkImage: AppImages.meetingDark,
    ),
    CategoryModel(
      id: 4,
      name: "Gaming",
      icon: Icons.sports_esports_outlined,
      lightImage: AppImages.gamingLight,
      darkImage: AppImages.gamingDark,
    ),
    CategoryModel(
      id: 5,
      name: "Eating",
      icon: Icons.local_pizza_outlined,
      lightImage: AppImages.eatingLight,
      darkImage: AppImages.eatingDark,
    ),
    CategoryModel(
      id: 6,
      name: "Holiday",
      icon: Icons.holiday_village_outlined,
      lightImage: AppImages.holidayLight,
      darkImage: AppImages.holidayDark,
    ),
    CategoryModel(
      id: 7,
      name: "Exhibition",
      icon: Icons.water_drop_outlined,
      lightImage: AppImages.exhibitionLight,
      darkImage: AppImages.exhibitionDark,
    ),
    CategoryModel(
      id: 8,
      name: "Workshop",
      icon: Icons.work_outline,
      lightImage: AppImages.workshopLight,
      darkImage: AppImages.workshopDark,
    ),
    CategoryModel(
      id: 9,
      name: "Book Club",
      icon: Icons.menu_book_rounded,
      lightImage: AppImages.bookclubLight,
      darkImage: AppImages.bookclubDark,
    ),
  ];
}
