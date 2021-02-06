import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';

class CalcButtonButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;

  CalcButtonButton(this.child, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shape: CircleBorder(),
        primary: lightThema.sub,
      ),
    );
  }
}
