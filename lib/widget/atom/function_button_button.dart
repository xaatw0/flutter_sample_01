import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';

class FunctionButtonButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;

  FunctionButtonButton(this.child, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        primary: lightThema.accent,
      ),
    );
  }
}
