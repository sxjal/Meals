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
    Widget screen;
    if (meals.isEmpty) {
      screen = const Center(
        child: Text("No meals found!"),
      );
    } else {
      screen = ListView.builder(
        itemBuilder: (ctx, index) => Text(
          meals[index].title,
        ),
        itemCount: meals.length,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: screen,
      ),
    );
  }
}
