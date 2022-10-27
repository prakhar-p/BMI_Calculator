
import 'dart:ui';
import 'package:bmi_calculator/box.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

const result_title = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);
const status = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.green,
  fontSize: 30.0,
);
const pinkk = Color(0xFFE91E63);


class ResultPage extends StatelessWidget {
  ResultPage(this.stat,this.digit,this.description);

  final String stat;
  final String digit;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primeColor,
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.only(top: 15.0),
            child: Text(
              'Your Result',
              style: result_title,
            ),
          ),
          Expanded(
              flex: 5,
              child: Box(
                boxColor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      digit,
                      style: status,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      stat.toUpperCase(),
                      style: height,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      description,
                      style: label,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: pinkk,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              height: 50.0,
              // padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
