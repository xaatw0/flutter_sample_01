import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final String text;

  ResultText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
