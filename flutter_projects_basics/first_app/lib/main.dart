import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromRGBO(33, 150, 243, 1),
          Color.fromRGBO(255, 235, 59, 1),
        ),
      ),
    ),
  );
}
