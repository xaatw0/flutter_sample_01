import 'package:flutter/material.dart';

import '../../color_pallet.dart';

class SelectButtonText extends StatelessWidget {
  final String text;

  SelectButtonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: lightThema.sub,
      ),
    );
  }
}
