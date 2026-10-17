import 'package:flutter/material.dart';
import 'package:my_second_flutter_app/gradient_container.dart';

const startAlignment = Alignment.bottomCenter;
const endAlignment = Alignment.topCenter;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 255, 0),
        body: GradientContainer(
          startAlignment: startAlignment,
          endAlignment: endAlignment,
        ),
      ),
    ),
  );
}
