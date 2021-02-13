import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';

class FunctionButtonIcon extends StatelessWidget {
  final IconData iconData;
  final double size = 24;
  final ColorPallet colorPallet;

  FunctionButtonIcon(this.iconData, this.colorPallet);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: colorPallet.base,
    );
  }
}
