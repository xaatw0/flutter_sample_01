import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/atom/function_button_button.dart';
import 'package:flutter_app_01/widget/atom/function_button_icon.dart';

class FunctionButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;
  final ColorPallet colorPallet;
  final Key key;

  FunctionButton(
    this.iconData,
    this.onPressed,
    this.colorPallet, {
    this.key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionButtonButton(
      FunctionButtonIcon(iconData, colorPallet),
      onPressed,
      colorPallet,
    );
  }
}
