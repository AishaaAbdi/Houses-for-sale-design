import 'package:flutter/material.dart';
import 'package:foodorder/homeHouse.dart';


void main() {
  runApp(const foodorder());
}


class foodorder extends StatelessWidget {
  const foodorder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeHouse(),
    );
  }
}