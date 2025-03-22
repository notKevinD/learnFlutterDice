import 'package:diceapp/dice_roller.dart';
import 'package:flutter/material.dart';
// import "package:diceapp/text_style.dart";

class Tes extends StatelessWidget {
  const Tes(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
