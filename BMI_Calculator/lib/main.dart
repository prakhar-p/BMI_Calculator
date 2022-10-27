import 'input_page.dart';
import 'package:flutter/material.dart';

const primeColor=Color(0xFF0A0E21);
void main() {
  runApp(Base());
}

// ignore: use_key_in_widget_constructors
class Base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: primeColor,
          scaffoldBackgroundColor: primeColor,
          accentColor: primeColor,
      ),
      home: const Input_page(),

    );
  }
}