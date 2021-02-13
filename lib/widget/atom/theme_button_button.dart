import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeButtonButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;

  ThemeButtonButton(this.icon, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: icon,
    );
  }
}
