import 'package:flutter/material.dart';

import 'package:diceapp/tes.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Tes(
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 207, 0, 10),
        ),
      ),
    ),
  );
}
