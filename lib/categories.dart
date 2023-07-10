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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 5,
        ),
        children: const [
          Text("sajal"),
          Text("something"),
        ],
      ),
    );
  }
}
