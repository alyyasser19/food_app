import 'package:flutter/material.dart';

import '../models/categories.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/';
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [...
        dummyCategories.map((category) => CategoryItem(category)).toList(),
      ],
      ),
    );
  }
}
