import 'package:flutter/material.dart';

class CategoriesClass extends StatelessWidget {
  const CategoriesClass({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi there!"),
      ),
      body: GridView(
        children: [],
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 /  5,
        ),
      ),
    );
  }
}
