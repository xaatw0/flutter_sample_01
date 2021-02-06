import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';

class SelectButtonButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;

  SelectButtonButton(this.child, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        primary: lightThema.base,
      ),
    );
  }
}
