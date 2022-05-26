import 'package:flutter/material.dart';
import 'package:food_delivery_ui/components/single_meal.dart';
import '../model/food.dart';
import '../provider/food.dart';

class GridViewComponent extends StatelessWidget {
  List meal;
  GridViewComponent({required this.meal});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meal.length,
      itemBuilder: (context, index) {
        return MealComponent(
          name: meal[index].name,
          price: meal[index].price,
          image: meal[index].imageUrl,
          keyFactor: meal[index].keyFactor,
        );
      },
    );
  }
}
