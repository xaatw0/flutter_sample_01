import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/notifier/theme_notifier.dart';
import 'package:flutter_app_01/widget/atom/theme_button_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

class ThemeButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useProvider(themeProvider);
    final themeState = useProvider(themeProvider.state);

    final isLightMode = themeState == lightThema;

    return ThemeButtonButton(
      Icon(isLightMode ? Icons.wb_sunny : Icons.brightness_2),
      () {
        theme.setValue(isLightMode ? darkThema : lightThema);
      },
      themeState,
    );
  }
}
