import 'package:flutter/material.dart';
import 'package:meals/widgets/grid_data.dart';
import 'package:meals/data/data.dart';

class CategoriesClass extends StatelessWidget {
  const CategoriesClass({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi there!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridData(category: avaialbleCategories[0]),
      ),
    );
  }
}
