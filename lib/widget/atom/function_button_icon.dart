import 'package:flutter/material.dart';

class FunctionButtonIcon extends StatelessWidget {
  final IconData iconData;
  final double size = 24;

  FunctionButtonIcon(this.iconData);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: Colors.white,
    );
  }
}
