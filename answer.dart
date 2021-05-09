import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function y;
  final String z;
  Answer(this.y, this.z);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      width: 180,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(z),
          onPressed: y),
    ));
  }
}
