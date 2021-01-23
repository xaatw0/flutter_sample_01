import 'package:flutter/material.dart';

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
        primary: Colors.lightBlueAccent,
      ),
    );
  }
}
