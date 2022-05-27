import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:food_delivery_ui/components/floating_button.dart';
import '../category_meals/noddles.dart';
import '../category_meals/pizza.dart';
import '../category_meals/popular.dart';
import '../category_meals/recommended.dart';
import '../constants/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  static final pages = [
    const RecommendedScreen(),
    const PopularScreen(),
    const NoddlesScreen(),
    const PizzaScreen(),
  ];

  void switchPage(int pageIndex) {
    setState(() {
      index = pageIndex;
    });
  }

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  Widget categoryButton(int catIndex, String title) {
    return GestureDetector(
      onTap: () => switchPage(catIndex),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Chip(
          backgroundColor: index == catIndex ? yellowDeep : Colors.white,
          label: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButton(),
      backgroundColor: themeColor,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: themeColor,
        ),
        backgroundColor: themeColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 2,
            child: Image.asset(
              'assets/images/menu.png',
              width: 25,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Restaurant',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromARGB(255, 214, 210, 210),
                            ),
                            child: const Text(
                              '20-30 Min',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            '2.4km  Restaurant',
                            style: TextStyle(
                              color: greyAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/res_logo.png',
                      width: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '"Orange sandwiches is delicious"',
                    style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: const [
                      Icon(
                        Icons.star_border,
                        color: yellowDeep,
                      ),
                      Text(
                        '4.7',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryButton(0, 'Recommend'),
                    categoryButton(1, 'Popular'),
                    categoryButton(2, 'Noddles'),
                    categoryButton(3, 'Pizza'),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: 430,
                  // width: 500,
                  child:pages[index],
                  
                ),
              ),
              DotsIndicator(
                decorator: const DotsDecorator(
                  activeColor: yellowDeep,
                  color: greyAccent,
                ),
                dotsCount: pages.length,
                position: index + 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
