import 'package:flutter/foundation.dart';
import '../model/food.dart';

class FoodData extends ChangeNotifier {
  // Food findById(int id, String category) {
  //   late Food food;
  //   switch (category) {
  //     case 'recommended':
  //       food = recommendedMeals.firstWhere((food) => food.id == id);
  //       break;

  //     case 'popular':
  //       food = popularMeals.firstWhere((food) => food.id == id);
  //       break;

  //     case 'noddles':
  //       food = noddlesMeals.firstWhere((food) => food.id == id);
  //       break;

  //     case 'pizza':
  //       food = pizzaMeals.firstWhere((food) => food.id == id);
  //       break;
  //   }
  //   return food;
  // }

  Food findById(int id) {
    return meals.firstWhere((food) => food.id == id);
  }

  List recommendedMeals = [
    Food(
        id: 1,
        name: 'Samu Soup',
        imageUrl: 'assets/images/dish1.png',
        desc:
            'When it is hot, add the chopped onions and fry till it softens and becomes translucent.This soap is best known for it\'s taste. It is cool when eaten with a chilled soft drink',
        waitTime: '50 min',
        score: 4.7,
        price: 50,
        cal: '124 Kcal',
        quantity: 12,
        about:
            'Boiled tomato puree, stir well and fry. Reduce the heat to medium-low and stir the paste frequently to avoid burning. Initially, the oil and tomato puree will mix and boilSamu saup known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'No.1 in Sales'),
    Food(
        id: 2,
        name: 'Electra Dish',
        imageUrl: 'assets/images/dish2.png',
        desc:
            'This meal is best known for it\'s taste. It is cool when eaten with a chilled soft drink.The tomato should be ripe, have a low water content, not be too acidic or have excessive seeds, so it will thicken and take less time to lose its moisture. Any type of plum tomatoes will be very good for the tomato stew base because they have a concentrated and robust flavour',
        waitTime: '40 min',
        score: 3.7,
        price: 60,
        cal: '24 Kcal',
        quantity: 412,
        about:
            'Palm oil adds a different flavour profile to the dish and makes for a wider variety in its usage, because the palm oil versionElectra Dish is known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'Low Fat'),
    Food(
        id: 3,
        name: 'Salag Dish',
        imageUrl: 'assets/images/dish3.png',
        desc:
            'This meal is best known for it\'s taste. It is cool when eaten with a chilled soft drink.If you buy yours prepacked, it is possible that the yellow lining won\'t be there, so simply wash in salted water or lime/lemon juice',
        waitTime: '90 min',
        score: 2.7,
        price: 70,
        cal: '54 Kcal',
        quantity: 412,
        about:
            'Salag Dish is known for it\'s sweet taste and aroma. But I highly recommend that you season the gizzards properly using as much seasoning as you are comfortable with and let the stock dry as it cooks the meat. ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'Highly Recommended'),
    Food(
        id: 4,
        name: 'Rufaus Dish',
        imageUrl: 'assets/images/dish4.png',
        desc:
            'I\'ll highly recommend ripe plantains with some black spots(on the skin), but not overly ripe, so that you don\'t end up with a less appealing meal.This meal is best known for it\'s taste. It is cool when eaten with a chilled soft drink',
        waitTime: '140 min',
        score: 5.0,
        price: 80,
        cal: '114 Kcal',
        quantity: 412,
        about:
            'Just your normal gizzards and plantain…with a yummy spicy twist. Rufaus Dish is known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'Everything cool'),
  ];

  List popularMeals = [
    Food(
        id: 1,
        name: 'Samu Soup',
        imageUrl: 'assets/images/dish1.png',
        desc:
            'When it is hot, add the chopped onions and fry till it softens and becomes translucent.This soap is best known for it\'s taste. It is cool when eaten with a chilled soft drink',
        waitTime: '50 min',
        score: 4.7,
        price: 50,
        cal: '124 Kcal',
        quantity: 12,
        about:
            'Boiled tomato puree, stir well and fry. Reduce the heat to medium-low and stir the paste frequently to avoid burning. Initially, the oil and tomato puree will mix and boilSamu saup known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'No.1 in Sales'),
    Food(
        id: 2,
        name: 'Electra Dish',
        imageUrl: 'assets/images/dish2.png',
        desc:
            'This meal is best known for it\'s taste. It is cool when eaten with a chilled soft drink.The tomato should be ripe, have a low water content, not be too acidic or have excessive seeds, so it will thicken and take less time to lose its moisture. Any type of plum tomatoes will be very good for the tomato stew base because they have a concentrated and robust flavour',
        waitTime: '40 min',
        score: 3.7,
        price: 60,
        cal: '24 Kcal',
        quantity: 412,
        about:
            'Palm oil adds a different flavour profile to the dish and makes for a wider variety in its usage, because the palm oil versionElectra Dish is known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'Low Fat'),
  ];

  List noddlesMeals = [
    Food(
        id: 1,
        name: 'Samu Soup',
        imageUrl: 'assets/images/dish1.png',
        desc:
            'When it is hot, add the chopped onions and fry till it softens and becomes translucent.This soap is best known for it\'s taste. It is cool when eaten with a chilled soft drink',
        waitTime: '50 min',
        score: 4.7,
        price: 50,
        cal: '124 Kcal',
        quantity: 12,
        about:
            'Boiled tomato puree, stir well and fry. Reduce the heat to medium-low and stir the paste frequently to avoid burning. Initially, the oil and tomato puree will mix and boilSamu saup known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'No.1 in Sales'),
  ];

  List pizzaMeals = [];

  List meals = [
    Food(
        id: 1,
        name: 'Samu Soup',
        imageUrl: 'assets/images/dish1.png',
        desc:
            'When it is hot, add the chopped onions and fry till it softens and becomes translucent.This soap is best known for it\'s taste. It is cool when eaten with a chilled soft drink',
        waitTime: '50 min',
        score: 4.7,
        price: 50,
        cal: '124 Kcal',
        quantity: 12,
        about:
            'Boiled tomato puree, stir well and fry. Reduce the heat to medium-low and stir the paste frequently to avoid burning. Initially, the oil and tomato puree will mix and boilSamu saup known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'No.1 in Sales'),
    Food(
        id: 2,
        name: 'Electra Dish',
        imageUrl: 'assets/images/dish2.png',
        desc:
            'This meal is best known for it\'s taste. It is cool when eaten with a chilled soft drink.The tomato should be ripe, have a low water content, not be too acidic or have excessive seeds, so it will thicken and take less time to lose its moisture. Any type of plum tomatoes will be very good for the tomato stew base because they have a concentrated and robust flavour',
        waitTime: '40 min',
        score: 3.7,
        price: 60,
        cal: '24 Kcal',
        quantity: 412,
        about:
            'Palm oil adds a different flavour profile to the dish and makes for a wider variety in its usage, because the palm oil versionElectra Dish is known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'Low Fat'),
    Food(
        id: 3,
        name: 'Salag Dish',
        imageUrl: 'assets/images/dish3.png',
        desc:
            'This meal is best known for it\'s taste. It is cool when eaten with a chilled soft drink.If you buy yours prepacked, it is possible that the yellow lining won\'t be there, so simply wash in salted water or lime/lemon juice',
        waitTime: '90 min',
        score: 2.7,
        price: 70,
        cal: '54 Kcal',
        quantity: 412,
        about:
            'Salag Dish is known for it\'s sweet taste and aroma. But I highly recommend that you season the gizzards properly using as much seasoning as you are comfortable with and let the stock dry as it cooks the meat. ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'Highly Recommended'),
    Food(
        id: 4,
        name: 'Rufaus Dish',
        imageUrl: 'assets/images/dish4.png',
        desc:
            'I\'ll highly recommend ripe plantains with some black spots(on the skin), but not overly ripe, so that you don\'t end up with a less appealing meal.This meal is best known for it\'s taste. It is cool when eaten with a chilled soft drink',
        waitTime: '140 min',
        score: 5.0,
        price: 80,
        cal: '114 Kcal',
        quantity: 412,
        about:
            'Just your normal gizzards and plantain…with a yummy spicy twist. Rufaus Dish is known for it\'s sweet taste and aroma ',
        ingredients: [
          {'Scallon': 'assets/images/ingre4.png'},
          {'Noddles': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
        ],
        keyFactor: 'Everything cool'),
  ];
}
