import 'package:flutter/material.dart';
import 'package:my_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: AppLayout(
          [
            Color.fromARGB(255, 82, 25, 181),
            Color.fromARGB(255, 19, 215, 186),
          ],
        ),
      ),
    ),
  );
}
