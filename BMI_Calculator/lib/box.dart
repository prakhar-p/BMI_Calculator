import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget boxChild;
  final Color c;
 // final Function gesture;

  Box(this.c, this.boxChild/*,this.gesture*/);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: boxChild,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(11.0),
        ),
      ),
    );
  }
}
