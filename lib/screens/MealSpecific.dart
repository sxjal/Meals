import 'package:meals/modal/meal.dart';
import 'package:flutter/material.dart';

class MealSpecific extends StatelessWidget {
  const MealSpecific({super.key, required this.meal});

  final Meal meal;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Receipe"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              decoration: const BoxDecoration(
                  //color: Color.fromARGB(182, 67, 96, 100),
                  ),
              child: Column(
                //fit: StackFit.expand,

                //clipBehavior: Clip.antiAliasWithSaveLayer,
                children: [
                  Card(
                    elevation: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        meal.imageUrl,
                        fit: BoxFit.cover,
                        //width: 20,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        meal.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Icon(
                            Icons.bento,
                            color: meal.isLactoseFree
                                ? Colors.greenAccent
                                : Colors.redAccent,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.smoke_free,
                            color: meal.isGlutenFree
                                ? Colors.greenAccent
                                : Colors.redAccent,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.bento,
                            color: meal.isVegan
                                ? Colors.greenAccent
                                : Colors.redAccent,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.smoke_free,
                            color: meal.isVegetarian
                                ? Colors.greenAccent
                                : Colors.redAccent,
                          ),
                          const Spacer(),
                          // Icon(icon),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
