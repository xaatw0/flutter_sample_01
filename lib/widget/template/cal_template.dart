import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/organism/calc_area.dart';
import 'package:flutter_app_01/widget/organism/result_area.dart';
import 'package:flutter_app_01/widget/organism/select_area.dart';

class CalcTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white24,
            child: Column(
              children: [
                SelectArea(),
                CalcArea(),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlue,
              child: ResultArea(),
            )),
      ],
    );
  }
}
