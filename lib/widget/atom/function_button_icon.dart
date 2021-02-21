import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';

class FunctionButtonIcon extends StatelessWidget {
  final IconData iconData;
  final ColorPallet colorPallet;

  FunctionButtonIcon(this.iconData, this.colorPallet);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Icon(
              iconData,
              color: colorPallet.base,
            ),
          ),
        ),
      ],
    );
  }
}
