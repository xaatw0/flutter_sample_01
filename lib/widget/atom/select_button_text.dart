import 'package:flutter/material.dart';

import '../../color_pallet.dart';

class SelectButtonText extends StatelessWidget {
  final String text;
  final ColorPallet colorPallet;

  SelectButtonText(this.text, this.colorPallet);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colorPallet.sub,
      ),
    );
  }
}
