import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../color_pallet.dart';

class ThemeButtonButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;

  ThemeButtonButton(this.icon, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: icon,
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shape: CircleBorder(),
        primary: lightThema.base,
      ),
    );
  }
}
