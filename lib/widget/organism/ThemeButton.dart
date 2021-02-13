import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_01/widget/atom/theme_button_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

class ThemeButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeButtonButton(
      Icon(Icons.wb_sunny),
      () {},
    );
  }
}
