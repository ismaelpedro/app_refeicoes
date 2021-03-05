import 'package:flutter/material.dart';
import 'package:refeicoes/screens/meal_detail.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (context) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoriesMeals(),
        AppRoutes.MEAL_DETAIL: (context) => MealDetail(),
      },
    );
  }
}
