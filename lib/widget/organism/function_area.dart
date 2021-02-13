import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/calc_model.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/notifier/int_value_notifier.dart';
import 'package:flutter_app_01/notifier/theme_notifier.dart';
import 'package:flutter_app_01/widget/molecule/function_button.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:flutter_app_01/notifier/result_notifier.dart';

class FunctionArea extends HookWidget {
  final CalcModel model;
  final GotoModel _gotoModel;
  FunctionArea(this.model, this._gotoModel);

  @override
  Widget build(BuildContext context) {
    final price = useProvider(priceProvider);
    final result = useProvider(resultProvider);
    final colorPallet = useProvider(themeProvider.state);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: FunctionButton(
            Icons.clear,
            () {
              model.push(CalcKey.KEY_CLEAR);
              price.setValue(model.value);
              _gotoModel.setPrice(model.value);
              result.update(_gotoModel);
            },
            colorPallet,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: FunctionButton(
            Icons.arrow_left,
            () {
              model.push(CalcKey.KEY_DEL);
              price.setValue(model.value);
              _gotoModel.setPrice(model.value);
              result.update(_gotoModel);
            },
            colorPallet,
          ),
        ),
      ],
    );
  }
}
