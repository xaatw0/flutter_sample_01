import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/atom/calc_button_text.dart';
import 'package:flutter_app_01/widget/atom/calc_flat_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_icon.dart';
import 'package:flutter_app_01/widget/atom/select_button_text.dart';

class CalButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  CalButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    Row row = Row(
      children: [
        Expanded(
          child: Center(
            child: CalcButtonText(text),
          ),
        ),
      ],
    );

    return CalcFlatButtonButton(row, onPressed);
  }
}
