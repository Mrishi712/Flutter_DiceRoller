import 'package:flutter/material.dart';
import 'dart:math';


var randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  //function to roll DIce
  void rollDice() {
    var randNum=randomizer.nextInt(6)+1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$randNum.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              foregroundColor: const Color.fromARGB(250, 231, 238, 240)),
          child: const Text(
            'Roll Dice',
            // style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
