import 'package:flutter/material.dart';
import 'package:my_app/dice_rooler.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class AppLayout extends StatelessWidget {
  const AppLayout(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRooler(),
      ),
    );
  }
}
