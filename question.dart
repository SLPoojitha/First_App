import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String x;
  Question(this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(11.0),
      child: Text(
        x,
        style: TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
