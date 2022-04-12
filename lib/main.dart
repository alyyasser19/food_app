import 'package:flutter/material.dart';
import 'package:food_app/screens/categories_screen.dart';
import 'package:food_app/screens/error.dart';
import 'package:food_app/screens/meal_detail_screen.dart';
import 'package:food_app/screens/meals_screen.dart';
import 'package:food_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
              ),
              bodyText2: const TextStyle(
                fontSize: 20,
                fontFamily: 'Raleway',
              ),
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
          headline1: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          )
        ),
        primaryTextTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            fontSize: 20,
            fontFamily: 'Raleway',
          ),
          bodyText2: const TextStyle(
            fontSize: 20,
            fontFamily: 'Raleway',
          ),
          headline6: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            color: Colors.white,
          ),
          headline1: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          )
        ),
      ),
      routes: {
        CategoriesScreen.routeName: (ctx) => const TabsScreen(),
        MealsScreen.routeName : (ctx) => const MealsScreen(),
        MealDetailScreen.routeName : (ctx) => const MealDetailScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const Error());
      },
    );
  }
}

