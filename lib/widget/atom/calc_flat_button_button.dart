import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';

class CalcFlatButtonButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final ColorPallet colorPallet;

  CalcFlatButtonButton(this.child, this.onPressed, this.colorPallet);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        primary: colorPallet.sub,
      ),
    );
  }
}
