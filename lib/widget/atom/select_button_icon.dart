import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';

class SelectButtonIcon extends StatelessWidget {
  final IconData iconData;
  final double size = 24;

  SelectButtonIcon(this.iconData);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: lightThema.sub,
    );
  }
}
