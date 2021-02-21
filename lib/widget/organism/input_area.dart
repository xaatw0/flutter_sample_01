import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/notifier/theme_notifier.dart';
import 'package:flutter_app_01/widget/organism/select_area.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'calc_area.dart';

class InputArea extends HookWidget {
  GotoModel _gotoModel = GotoModel();

  @override
  Widget build(BuildContext context) {
    final colorPallet = useProvider(themeProvider.state);
    return Container(
      color: colorPallet.background,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: colorPallet.sub,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: colorPallet.sub,
              child: Column(
                children: [
                  SelectArea(_gotoModel),
                  CalcArea(_gotoModel),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: colorPallet.sub,
            ),
          ),
        ],
      ),
    );
  }
}
