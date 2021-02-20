import 'package:flutter_app_01/notifier/theme_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

import 'theme_button.dart';

class MenuArea extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final colorPallet = useProvider(themeProvider.state);

    return Container(
      color: colorPallet.background,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Align(
          child: ThemeButton(),
          alignment: Alignment.centerRight,
        ),
      ),
    );
  }
}
