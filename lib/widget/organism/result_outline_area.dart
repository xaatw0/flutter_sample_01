import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/notifier/theme_notifier.dart';
import 'package:flutter_app_01/widget/organism/result_area.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class ResultOutlineArea extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final colorPallet = useProvider(themeProvider.state);

    return Stack(
      children: [
        Container(
          color: colorPallet.background,
        ),
        Container(
          decoration: BoxDecoration(
            color: colorPallet.base,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 32,
            ),
            child: ResultArea(),
          ),
        ),
      ],
    );
  }
}
