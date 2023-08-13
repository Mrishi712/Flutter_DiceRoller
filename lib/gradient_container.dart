import 'package:flutter/material.dart';
//import 'package:project_one/styled_text.dart';
import 'package:project_one/dice_roll.dart';
//variables
Alignment beginAlign = Alignment.bottomLeft;
Alignment endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //add constructor
  GradientContainer(this.startingColor, this.endingColor, {super.key});
  Color startingColor;
  Color endingColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [startingColor, endingColor],
            begin: beginAlign,
            end: endAlign),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
