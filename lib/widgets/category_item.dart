import 'package:flutter/material.dart';
import 'package:food_app/models/Category.dart';
import 'package:food_app/screens/meals_screen.dart';

class CategoryItem extends StatelessWidget {
  late final Category cat;
  late final String title;
  late final Color color;
  late final id;

CategoryItem(cat, {Key? key}) : super(key: key){
  cat =cat;
  title = cat.title;
  color = cat.color;
  id = cat.id;
}

void _selectCategory(BuildContext context) {
  Navigator.of(context).pushNamed(
    MealsScreen.routeName,
    arguments: {
      'id': id,
      'title': title,
      'color': color,
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: AnimatedContainer(duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.8),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(title, style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}
