import 'package:flutter/material.dart';
import 'package:meals/modal/category.dart';

class GridData extends StatelessWidget {
  const GridData(
      {super.key, required this.category, required this.selectCategory});
  final Category category;
  final void Function(BuildContext) selectCategory;

  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
