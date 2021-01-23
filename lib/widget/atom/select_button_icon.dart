import 'package:flutter/material.dart';

class SelectButtonIcon extends StatelessWidget {
  final IconData iconData;
  final double size = 16;

  SelectButtonIcon(this.iconData);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
    );
  }
}
