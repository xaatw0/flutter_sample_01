import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/organism/ThemeButton.dart';
import 'package:flutter_app_01/widget/organism/calc_area.dart';
import 'package:flutter_app_01/widget/organism/input_area.dart';
import 'package:flutter_app_01/widget/organism/menu_area.dart';
import 'package:flutter_app_01/widget/organism/result_area.dart';
import 'package:flutter_app_01/widget/organism/result_outline_area.dart';
import 'package:flutter_app_01/widget/organism/select_area.dart';

class CalcTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuArea(),
        Expanded(
          flex: 3,
          child: InputArea(),
        ),
        Expanded(
          flex: 1,
          child: ResultOutlineArea(),
        ),
      ],
    );
  }
}
