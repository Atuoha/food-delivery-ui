import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/food.dart';
import 'screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context)=>FoodData(),
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        theme: ThemeData(fontFamily: 'JosefinSlab'),
        home: const HomePage(),
        routes: {},
      ),
    );
  }
}
