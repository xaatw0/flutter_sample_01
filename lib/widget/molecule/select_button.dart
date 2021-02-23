import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/atom/select_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_icon.dart';
import 'package:flutter_app_01/widget/atom/select_button_text.dart';

class SelectButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function onPressed;
  final ColorPallet colorPallet;
  final Key keyText;

  SelectButton(
    this.iconData,
    this.text,
    this.onPressed,
    this.colorPallet, {
    this.keyText,
  });

  @override
  Widget build(BuildContext context) {
    Row row = Row(
      children: [
        SelectButtonIcon(iconData, colorPallet),
        Expanded(
          child: Center(
            child: SelectButtonText(
              text,
              colorPallet,
              keyText: keyText,
            ),
          ),
        ),
      ],
    );

    return SelectButtonButton(row, onPressed, colorPallet);
  }
}
