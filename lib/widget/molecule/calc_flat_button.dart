import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/atom/calc_button_text.dart';
import 'package:flutter_app_01/widget/atom/calc_flat_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_icon.dart';
import 'package:flutter_app_01/widget/atom/select_button_text.dart';

class CalcFlatButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final ColorPallet colorPallet;

  CalcFlatButton(this.text, this.onPressed, this.colorPallet)
      : super(key: Key(text));

  @override
  Widget build(BuildContext context) {
    Row row = Row(
      children: [
        Expanded(
          child: Center(
            child: CalcButtonText(text, colorPallet),
          ),
        ),
      ],
    );

    return CalcFlatButtonButton(row, onPressed, colorPallet);
  }
}
