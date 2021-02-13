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

  SelectButton(
    this.iconData,
    this.text,
    this.onPressed,
    this.colorPallet,
  );

  @override
  Widget build(BuildContext context) {
    Row row = Row(
      children: [
        SelectButtonIcon(iconData, colorPallet),
        Expanded(
          child: Center(
            child: SelectButtonText(text, colorPallet),
          ),
        ),
      ],
    );

    return SelectButtonButton(row, onPressed, colorPallet);
  }
}
