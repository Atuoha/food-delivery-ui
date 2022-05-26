import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/list.dart';
import '../provider/food.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   List food = Provider.of<FoodData>(context, listen: false).pizzaMeals;

    return food.isEmpty
        ? Center(
            child: Column(
              children: const [
                CircleAvatar(
                  radius:120,
                  backgroundImage: AssetImage(
                    'assets/images/sad.jpg',
                  ),
                ),
                SizedBox(height:10),
                Text(
                  'Meal Category is Empty!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        : GridViewComponent(meal: food);
  }
}
