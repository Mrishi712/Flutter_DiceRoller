import 'package:flutter/material.dart';

import 'package:project_one/gradient_container.dart';

void main(List<String> args) {
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(251, 32, 7, 198),const Color.fromARGB(255, 13, 168, 234))
      ),
    ),
  );
}

