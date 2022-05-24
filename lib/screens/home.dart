import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: themeColor,
        ),
        backgroundColor: themeColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
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
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 22,
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
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Restaurant',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 214, 210, 210),
                            ),
                            child: const Text(
                              '20-30 Min',
                            ),
                          ),
                          const Text(
                            '2.4km',
                            style: TextStyle(
                              color: Color.fromARGB(255, 214, 210, 210),
                            ),
                          ),
                          const Text('Restaurant'),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
