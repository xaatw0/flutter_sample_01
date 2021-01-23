import 'package:flutter/material.dart';

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        primary: Colors.white,
      ),
    );
  }
}
