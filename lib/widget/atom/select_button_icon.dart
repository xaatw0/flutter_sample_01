import 'package:flutter/material.dart';

class SelectButtonIcon extends StatelessWidget {
  final IconData iconData;
  final double size = 24;

  SelectButtonIcon(this.iconData);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: Colors.white,
    );
  }
}
