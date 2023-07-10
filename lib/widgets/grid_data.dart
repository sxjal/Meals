import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/data/data.dart';
import 'package:meals/modal/category.dart';

class GridData extends StatelessWidget {
  const GridData({super.key, required this.category});
  final Category category;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            //category.color.withOpacity(0.7),
            Theme.of(context).colorScheme.primary.withOpacity(0.7),
            category.color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          Text(
            "sajal",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "something",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "something",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
