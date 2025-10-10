import 'package:evently_app/core/models/category_model.dart';
import 'package:evently_app/core/widgets/custom_tab_item.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.isAll});
  final bool isAll;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;
  late List<CategoryModel> categories;

  @override
  void initState() {
    super.initState();
    categories = widget.isAll
        ? CategoryModel.categories
        : CategoryModel.categories.skip(1).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: TabBar(
        indicatorColor: Colors.transparent,
        isScrollable: true,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        tabs: categories
            .map(
              (categoryModel) => CustomTabItem(
                categoryModel: categoryModel,
                isSelected: selectedIndex == categories.indexOf(categoryModel),
              ),
            )
            .toList(),
      ),
    );
  }
}
