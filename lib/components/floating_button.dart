import 'package:flutter/material.dart';

import '../constants/color.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
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
    );
  }
}
