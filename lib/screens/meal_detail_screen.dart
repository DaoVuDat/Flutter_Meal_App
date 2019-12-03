import 'package:flutter/material.dart';
import '../dummy_categories.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final meal = DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
            height: 200,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 200,
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  Padding(
                    padding:EdgeInsets.all(10),child: Text("${meal.ingredients[index]}")),
              itemCount: meal.ingredients.length,
            ),
          )
        ],
      ),
    );
  }
}
