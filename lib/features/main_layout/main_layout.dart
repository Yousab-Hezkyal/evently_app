import 'package:evently_app/core/extensions/context_extension.dart';
import 'package:evently_app/core/route/router_name.dart';
import 'package:evently_app/features/main_layout/tabs/favourite_tab_screen.dart';
import 'package:evently_app/features/main_layout/tabs/home_tab_screen.dart';
import 'package:evently_app/features/main_layout/tabs/map_tab_screen.dart';
import 'package:evently_app/features/main_layout/tabs/profile_tab/presntation/profile_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    onPressed: () => _onTapFloatingActionButton(),
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
          label: context.l10n!.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            currentIndex == 1 ? Icons.location_on : Icons.location_on_outlined,
          ),
          label: context.l10n!.map,
        ),
        BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''),
        BottomNavigationBarItem(
          icon: Icon(
            currentIndex == 3
                ? Icons.favorite_sharp
                : Icons.favorite_outline_rounded,
          ),
          label: context.l10n!.favourite,
        ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 4 ? Icons.person : Icons.person_outline),
          label: context.l10n!.profile,
        ),
      ],
    ),
  );

  void _onTapNavigationBar(int index) {
    if (index == 2) return;
    setState(() => currentIndex = index);
  }

  void _onTapFloatingActionButton() {
    context.push(RouterName.addEvent);
  }
}
