import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/molecule/calc_button.dart';
import 'package:flutter_app_01/widget/molecule/function_button.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';

class CalcArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4.5,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: FunctionButton(
                  Icons.clear,
                  () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: FunctionButton(Icons.arrow_left, () {}),
              ),
            ],
          ),
          Expanded(child: CalButton("1", () {})),
        ],
      ),
    );
  }
}
