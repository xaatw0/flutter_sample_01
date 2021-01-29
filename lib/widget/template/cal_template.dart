import 'package:flutter/material.dart';

class CalcTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white24,
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlue,
            )),
      ],
    );
  }
}
