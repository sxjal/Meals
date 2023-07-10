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
          childAspectRatio: 19 / 6,
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
