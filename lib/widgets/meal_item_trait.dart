import 'package:flutter/material.dart';
import 'package:meals/modal/meal.dart';
//import 'package:food_icons/food_icons.dart';

class Trait extends StatelessWidget {
  const Trait({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.red,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
           ),
        ),
      ],
    );
  }
}
