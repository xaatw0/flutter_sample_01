import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/atom/function_button_button.dart';
import 'package:flutter_app_01/widget/atom/function_button_icon.dart';

class FunctionButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  FunctionButton(this.iconData, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return FunctionButtonButton(
      FunctionButtonIcon(iconData),
      onPressed,
    );
  }
}
