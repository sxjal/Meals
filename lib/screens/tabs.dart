import 'package:flutter/material.dart';
import 'package:meals/modal/meal.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/mealscreen.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedpageindex = 0;
  final List<Meal> favoriteMeals = [];

  void _selectpage(int index) {
    setState(() {
      _selectedpageindex = index;
    });
  }

  void _togglemealfavstatus(Meal meal) {
    final isexisting = favoriteMeals.contains(meal);
    setState(() {
      if (isexisting) {
        favoriteMeals.remove(meal);
      } else {
        favoriteMeals.add(meal);
      }
    });
  }

  @override
  Widget build(context) {
    Widget activestate =
        CategoriesScreen(ontogglefavorite: _togglemealfavstatus);
    String activepagetitle = "Categories";
    if (_selectedpageindex == 1) {
      activestate = MealScreen(
          meals: favoriteMeals, togglemealfavstatus: _togglemealfavstatus);
      activepagetitle = "Favorites";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activepagetitle),
      ),
      body: activestate,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        currentIndex: _selectedpageindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.set_meal,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
