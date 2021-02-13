import 'dart:ui';
import 'constant.dart';

import 'package:flutter_app_01/constant.dart';

class ColorPallet {
  final Color base;
  final Color accent;
  final Color sub;
  final Color background;

  ColorPallet(this.base, this.accent, this.sub, this.background);

  static _hexToColor(String hex) {
    String hexString = hex.replaceAll("#", "");
    return Color(int.parse("0xff${hexString}"));
  }
}

ColorPallet lightThema = ColorPallet(
  ColorPallet._hexToColor(kColorBase),
  ColorPallet._hexToColor(kColorAccent),
  ColorPallet._hexToColor(kColorSub),
  ColorPallet._hexToColor(kColorBackground),
);

ColorPallet darkThema = ColorPallet(
  ColorPallet._hexToColor(kColorDarkBase),
  ColorPallet._hexToColor(kColorDarkAccent),
  ColorPallet._hexToColor(kColorDarkSub),
  ColorPallet._hexToColor(kColorDarkBackground),
);
