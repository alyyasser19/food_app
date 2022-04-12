import 'package:flutter/material.dart';
import 'package:food_app/widgets/meal_item.dart';

import '../models/meals.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = '/meals';

  const MealsScreen({
    Key?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final settings = ModalRoute.of(context)?.settings.arguments;
    final  routeArgs = settings as Map<String, dynamic>;
    final title = routeArgs['title'] as String;
    final categoryId = routeArgs['id'] as String;
    final color = routeArgs['color'] as Color;

    final filteredMeals = meals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    print(filteredMeals);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child:
        ListView(
    children:
        filteredMeals.map((meal) {
         return MealItem(meal:meal);
        }).toList(),
      ),)
    );
  }
}