import 'package:flutter/material.dart';

class CalcButtonText extends StatelessWidget {
  final String text;

  CalcButtonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.deepPurple,
      ),
    );
  }
}
