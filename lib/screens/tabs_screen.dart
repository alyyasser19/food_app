import 'package:flutter/material.dart';
import 'package:food_app/screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key?key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child:
          Scaffold(
            appBar: AppBar(
              title: Text('Food App',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.fastfood),
                    text: 'Food',
                  ),
                  Tab(
                    icon: Icon(Icons.favorite_border),
                    text: 'Favorites',
                  )
                ]
              ),
            ),
                body: TabBarView(
                  children: <Widget>[
                    Center(
                      child: CategoriesScreen(),
                    ),
                    Center(
                      child: Text('Favorites'),
                    )
                  ]
                ),
          )
    );
  }
}
