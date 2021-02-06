import 'dart:ui';
import 'constant.dart';

import 'package:flutter_app_01/constant.dart';

class ColorPallet {
  final Color base;
  final Color accent;
  final Color sub;
  final Color background;

  ColorPallet(this.base, this.accent, this.sub, this.background);
}

ColorPallet lightThema =
    ColorPallet(kColorBase, kColorAccent, kColorSub, kColorBackground);
