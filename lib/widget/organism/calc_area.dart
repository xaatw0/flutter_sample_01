import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/calc_model.dart';
import 'package:flutter_app_01/widget/molecule/calc_button.dart';
import 'package:flutter_app_01/widget/molecule/calc_flat_button.dart';
import 'package:flutter_app_01/widget/molecule/function_button.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'function_area.dart';

class Price extends StateNotifier<int> {
  Price() : super(0);
  void setPrice(int price) => state = price;
}

final priceProvider = StateNotifierProvider((_) => Price());

class CalcArea extends HookWidget {
  CalcModel model = CalcModel();

  @override
  Widget build(BuildContext context) {
    final state = useProvider(priceProvider.state);
    final price = useProvider(priceProvider);

    return AspectRatio(
      aspectRatio: 3 / 4.5,
      child: Column(
        children: [
          Expanded(flex: 1, child: FunctionArea()),
          for (int i = 0; i < 3; i++)
            Expanded(flex: 2, child: CalAreaRow(model, i)),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: CalcFlatButton(state.toString(), () {
                          model.push(CalcKey.KEY_1);
                          price.setPrice(model.value);
                        }))),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CalcButton("00", () {}),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CalAreaRow extends HookWidget {
  final int index;
  final CalcModel model;

  CalAreaRow(
    this.model,
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final price = useProvider(priceProvider);
    return Row(
      children: [
        for (int i = 0; i < 3; i++)
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: CalcButton(
                (i + 1 + 3 * (2 - index)).toString(),
                () {
                  int value = i + 1 + 3 * (2 - index);
                  model.push(CalcKey.values[value]);
                  price.setPrice(model.value);
                },
              ),
            ),
          ),
      ],
    );
  }
}
