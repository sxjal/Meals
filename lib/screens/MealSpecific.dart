import 'package:meals/modal/meal.dart';
import 'package:flutter/material.dart';

class MealSpecific extends StatelessWidget {
  const MealSpecific({super.key, required this.meal});

  final Meal meal;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receipe"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              height: 400,
              child: Card(
                //padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                //decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(20),
                //),
                //width: double.infinity,
                //height: 400,
                elevation: 20,
                
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            meal.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
