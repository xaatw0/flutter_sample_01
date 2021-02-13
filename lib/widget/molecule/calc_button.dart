import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/atom/calc_button_button.dart';
import 'package:flutter_app_01/widget/atom/calc_button_text.dart';
import 'package:flutter_app_01/widget/atom/calc_flat_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_icon.dart';
import 'package:flutter_app_01/widget/atom/select_button_text.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final ColorPallet colorPallet;

  CalcButton(this.text, this.onPressed, this.colorPallet);

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

    return AspectRatio(
        aspectRatio: 1,
        child: CalcButtonButton(
          row,
          onPressed,
          colorPallet,
        ));
  }
}
