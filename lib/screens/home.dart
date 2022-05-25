import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

    static int index = 0;
      final controller = PageController(
        initialPage: _HomePageState.index,
        viewportFraction: 0.8, keepPage: true);
    final pages = [
      const RecommendedScreen(),
      const PopularScreen(),
      const NoddlesScreen(),
      const PizzaScreen(),
    ];

    void switchPage(int pageIndex) {
      setState(() {
        index = pageIndex;
        print(index);
      });
    }

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
      floatingActionButton: FittedBox(
        child: FloatingActionButton.extended(
          extendedPadding: const EdgeInsets.all(8),
          backgroundColor: yellowDeep,
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          label: const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
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
                  height: 435,
                  width: double.infinity,
                  child: pages[index],
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const ScrollingDotsEffect(
                  dotColor: greyAccent,
                  activeDotColor: yellowDeep,
                  activeStrokeWidth: 2.6,
                  activeDotScale: 1.9,
                  maxVisibleDots: 5,
                  radius: 8,
                  spacing: 10,
                  dotHeight: 7,
                  dotWidth: 7,
                  paintStyle: PaintingStyle.stroke,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
