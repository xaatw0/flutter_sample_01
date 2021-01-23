import 'package:flutter/material.dart';

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
        primary: Colors.lightBlueAccent,
      ),
    );
  }
}
