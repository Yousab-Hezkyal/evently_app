import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/theme/app_colors.dart';
import 'package:evently_app/features/main_layout/tabs/favourite_tab_screen.dart';
import 'package:evently_app/features/main_layout/tabs/home_tab_screen.dart';
import 'package:evently_app/features/main_layout/tabs/map_tab_screen.dart';
import 'package:evently_app/features/main_layout/tabs/profile_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeTabScreen(),
    MapTabScreen(),
    SizedBox.shrink(),
    FavouriteTabScreen(),
    ProfileTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: tabs[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFap,
      bottomNavigationBar: _buildBottomAppBar,
    );
  }

  FloatingActionButton get _buildFap => FloatingActionButton(
    onPressed: () {},
    elevation: 2.0.h,
    backgroundColor: context.primaryColor,
    shape: StadiumBorder(
      side: BorderSide(width: 4.w, color: AppColors.iceBlue),
    ),
    child: Icon(Icons.add),
  );
  BottomAppBar get _buildBottomAppBar => BottomAppBar(
    notchMargin: 12,
    child: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onTapNavigationBar(index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 0 ? Icons.home : Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            currentIndex == 1 ? Icons.location_on : Icons.location_on_outlined,
          ),
          label: "Map",
        ),
        BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''),
        BottomNavigationBarItem(
          icon: Icon(
            currentIndex == 3
                ? Icons.favorite_sharp
                : Icons.favorite_outline_rounded,
          ),
          label: "favourite",
        ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 4 ? Icons.person : Icons.person_outline),
          label: "profile",
        ),
      ],
    ),
  );

  void _onTapNavigationBar(int index) {
    if (index == 2) return;
    setState(() => currentIndex = index);
  }
}
