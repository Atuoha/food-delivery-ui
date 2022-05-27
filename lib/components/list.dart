import 'package:flutter/material.dart';
import 'package:food_delivery_ui/components/single_meal.dart';
import '../model/food.dart';
import '../provider/food.dart';
import '../screens/details.dart';

class GridViewComponent extends StatelessWidget {
  List meal;
  GridViewComponent({required this.meal});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meal.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              DetailsPage.routeName,
              arguments: {'id': meal[index].id},
            );
          },
          child: MealComponent(
            id: meal[index].id,
            name: meal[index].name,
            price: meal[index].price,
            image: meal[index].imageUrl,
            keyFactor: meal[index].keyFactor,
          ),
        );
      },
    );
  }
}
