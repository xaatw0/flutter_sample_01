import 'package:flutter/material.dart';

import '../../color_pallet.dart';

class SelectButtonText extends StatelessWidget {
  final String text;
  final ColorPallet colorPallet;
  final Key keyText;

  SelectButtonText(this.text, this.colorPallet, {this.keyText});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colorPallet.sub,
      ),
      key: keyText,
    );
  }
}
