import 'package:flutter/material.dart';

import '../models/Meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = '/meal-detail';

  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Meal meal = ModalRoute.of(context)?.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(meal.ingredients[index]),
                  ),
                ),
                itemCount: meal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                      title: Text(meal.steps[index]),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: meal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildSectionTitle(BuildContext context, String s) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        s,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  buildContainer(ListView listView) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 300,
      child: listView,
    );
  }
}
