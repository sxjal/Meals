import 'package:flutter/material.dart';
import 'package:meals/screens/mealscreen.dart';
import 'package:meals/widgets/grid_data.dart';
import 'package:meals/data/data.dart';
import 'package:meals/modal/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) =>
            MealScreen(title: category.title, meals: filteredMeals),
      ),
    );
    //Navigator.of(context).push(route);
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi there!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            // ...avaialbleCategories.map((category) {
            //   return GridData(
            //     category: category,
            //     selectCategory: () {
            //       selectCategory(context);
            //     },
            //   );
            // }).toList(),
            for (final category in avaialbleCategories)
              GridData(
                category: category,
                onSelectCategory: () {
                  _selectCategory(context, category);
                },
              ),
          ],
        ),
      ),
    );
  }
}
