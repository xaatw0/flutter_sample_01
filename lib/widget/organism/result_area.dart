import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/atom/result_accent_text.dart';
import 'package:flutter_app_01/widget/atom/result_text.dart';
import 'package:flutter_app_01/widget/molecule/result_area_row.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'calc_area.dart';

class ResultArea extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(priceProvider.state);

    return Column(
      children: [
        ResultAreaRow(
          ResultText("総額:"),
          ResultText(state.toString()),
        ),
        ResultAreaRow(
          ResultText("割引:"),
          ResultText("123,456"),
        ),
        ResultAreaRow(
          ResultAccentText("支払い:"),
          ResultAccentText("123,456"),
        ),
        ResultAreaRow(
          ResultText("クーポン:"),
          ResultText("123,456"),
        ),
      ],
    );
  }
}
