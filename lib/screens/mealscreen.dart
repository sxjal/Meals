import 'package:flutter/material.dart';
import 'package:meals/modal/meal.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(children: [
          ...meals.map((meal) {
            return ListTile(
              title: Text(meal.title),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(meal.imageUrl),
              ),
            );
          }).toList(),
        ]),
      ),
    );
  }
}
