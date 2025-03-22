import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = '../assets/images/dice-4.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6)+1;
    setState(() {
      activeDice = '../assets/images/dice-$diceRoll.png';
      // print('Dice rolled');
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDice, width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28.5),
          ),
          child: Text('Roll the dice'),
        ),
      ],
    );
  }
}
