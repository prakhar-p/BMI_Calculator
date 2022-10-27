import 'package:flutter/material.dart';
const pinkk = Color(0xFFE91E63);

class Bottom_button extends StatelessWidget {
  Bottom_button(this.onTap,this.title);
  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap(),
      child: Container(
        color: pinkk,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        height: 50.0,
        // padding: EdgeInsets.all(15.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
