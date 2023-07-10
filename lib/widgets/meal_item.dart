import 'package:flutter/material.dart';
import 'package:meals/modal/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        autofocus: true,
        onTap: () {},
        child: Text(meal.title),
      ),
    );
  }
}
