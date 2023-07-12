import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Drawer(
      elevation: 10,
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black12,
                  Colors.black26,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.fastfood,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Cooking Up!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
