import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../constants/color.dart';
import '../model/food.dart';
import '../provider/food.dart';

class DetailsPage extends StatefulWidget {
  static const routeName = 'details';
  @override
  State<DetailsPage> createState() => DetailsPageState();
}

enum Operation { increment, decrement }

class DetailsPageState extends State<DetailsPage> {
  Widget customTiles(var title, Color color, IconData icon) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text('$title')
      ],
    );
  }

  int quantity = 1;

  void incrementQuantity(Operation operation) {
    switch (operation) {
      case Operation.increment:
        setState(() {
          quantity += 1;
        });
        break;

      case Operation.decrement:
        if (quantity > 1) {
          setState(() {
            quantity -= 1;
          });
        }
        break;
    }
  }

  Widget operationButton(IconData icon, Operation operation) {
    return GestureDetector(
      onTap: () => incrementQuantity(operation),
      child: Icon(
        icon,
        size: 20,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var id = data['id'] as int;

    Food food = Provider.of<FoodData>(context).findById(id);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: yellowDeep,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
            radius: 19,
            backgroundColor: themeColor,
            child: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                  ),
                );
              },
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              radius: 19,
              backgroundColor: themeColor,
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 160),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: themeColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 90),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            food.name,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customTiles(
                              food.waitTime,
                              Colors.blue,
                              Icons.alarm,
                            ),
                            const SizedBox(width: 15),
                            customTiles(
                              food.score,
                              yellowDeep,
                              Icons.star_outline,
                            ),
                            const SizedBox(width: 15),
                            customTiles(
                              food.cal,
                              Colors.red,
                              CupertinoIcons.drop,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                children: [
                                  WidgetSpan(
                                    child: Transform.translate(
                                      offset: const Offset(0.0, -9.0),
                                      child: const Text(
                                        '\$',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '${food.price}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: yellowDeep,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    operationButton(
                                      Icons.add,
                                      Operation.increment,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: themeColor,
                                      radius: 12,
                                      child: Text(
                                        '$quantity',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    operationButton(
                                      Icons.remove,
                                      Operation.decrement,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const Text(
                          'Ingredients',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          height: 100,
                          padding: EdgeInsets.all(5),
                          child: GridView.count(
                            crossAxisSpacing: 5,
                            padding: EdgeInsets.zero,
                            crossAxisCount: food.ingredients.length,
                            children: food.ingredients.map((ingredient) {
                              return Container(
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                        ingredient.values.first,
                                      ),
                                    ),
                                    Text(
                                      ingredient.keys.first,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: Image.asset(
                    food.imageUrl,
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
