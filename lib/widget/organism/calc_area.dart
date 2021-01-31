import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/molecule/calc_button.dart';
import 'package:flutter_app_01/widget/molecule/calc_flat_button.dart';
import 'package:flutter_app_01/widget/molecule/function_button.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'function_area.dart';

class CalcArea extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4.5,
      child: Column(
        children: [
          Expanded(flex: 1, child: FunctionArea()),
          for (int i = 0; i < 3; i++) Expanded(flex: 2, child: CalAreaRow(i)),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: CalcFlatButton("0", () {}))),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CalcButton("00", () {}),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CalAreaRow extends HookWidget {
  final int index;

  const CalAreaRow(
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 3; i++)
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: CalcButton(
                (i + 1 + 3 * (2 - index)).toString(),
                () {},
              ),
            ),
          ),
      ],
    );
  }
}
