import 'package:flutter/material.dart';
import 'dart:math';

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() {
    return _RollerState();
  }
}


class _RollerState extends State<Roller> {
  var activeimage = 'assets/images/img_1.png';
void rolldice() {
  var rollno = Random().nextInt(6)+1;
  setState(() {
    activeimage = 'assets/images/img_$rollno.png';
  });
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeimage,
          width: 200,
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('ROLL'),
        ),
      ],
    );
  }
}
