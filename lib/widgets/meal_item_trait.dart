import 'package:flutter/material.dart';
import 'package:meals/modal/meal.dart';

class Trait extends StatelessWidget {
  const Trait({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(context) {
    return const Row(
      children: [
        Icon(),
        Text(''),
      ],
    );
  }
}
