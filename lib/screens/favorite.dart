import 'package:flutter/material.dart';
import 'package:refeicoes/models/meal.dart';
import 'package:refeicoes/components/meal_item.dart';

class Favorite extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const Favorite(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição foi marcada como favorito'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
