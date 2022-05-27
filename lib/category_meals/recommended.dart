import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/list.dart';
import '../provider/food.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List food = Provider.of<FoodData>(context, listen: false).recommendedMeals;

    return food.isEmpty
        ? Center(
            child: Column(
              children: const [
                CircleAvatar(
                  radius:100,
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


// GridViewComponent