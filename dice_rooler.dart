import 'dart:math';

import 'package:flutter/material.dart';

class DiceRooler extends StatefulWidget {
  const DiceRooler({super.key});
  @override
  State<DiceRooler> createState() {
    return _DiceRoolerState();
  }
}

class _DiceRoolerState extends State<DiceRooler> {
  var currentdiceroll = 3;

  void rolldice() {
    setState(() {
      currentdiceroll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdiceroll.png',
          width: 200,
        ),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 30),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 32,
                )),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
