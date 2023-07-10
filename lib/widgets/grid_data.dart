import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/data/data.dart';

class GridData extends StatelessWidget {
  const GridData({super.key});

  @override
  Widget build(context) {
    return GridView(
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
    );
  }
}
