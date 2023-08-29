import 'package:flutter/material.dart';
import 'package:roll_dice/roller.dart';

class GradientClass extends StatelessWidget {
  const GradientClass({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFF4F84A), Color(0xFF00CFFD)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const Center(
          child: Roller()
        ));
  }
}
