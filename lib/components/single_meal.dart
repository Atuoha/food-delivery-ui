import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../screens/details.dart';

class MealComponent extends StatelessWidget {
  final String image;
  final int id;
  final String name;
  final double price;
  final String keyFactor;
  MealComponent({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.keyFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 45,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 13),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                keyFactor,
                style: const TextStyle(
                  color: greyAccent,
                ),
              ),
              const SizedBox(height: 10),
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
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '$price',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // const SizedBox(width:50),
          Expanded(
            child: Container(
              padding: EdgeInsets.zero,
              // transform:
              alignment: const Alignment(1.5, -1.5),
              child: const Icon(
                Icons.chevron_right,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
