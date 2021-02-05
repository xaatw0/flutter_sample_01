import 'package:flutter/material.dart';
import 'package:flutter_app_01/notifier/int_value_notifier.dart';
import 'package:flutter_app_01/notifier/result_notifier.dart';
import 'package:flutter_app_01/widget/atom/result_accent_text.dart';
import 'package:flutter_app_01/widget/atom/result_text.dart';
import 'package:flutter_app_01/widget/molecule/result_area_row.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
import 'calc_area.dart';

class ResultArea extends HookWidget {
  final formatter = NumberFormat("#,###");

  @override
  Widget build(BuildContext context) {
    final price = useProvider(priceProvider.state);
    final result = useProvider(resultProvider.state);

    return Column(
      children: [
        ResultAreaRow(
          ResultText("総額:"),
          ResultText(formatter.format(price)),
        ),
        ResultAreaRow(
          ResultText("割引:"),
          ResultText(formatter.format(result.minus)),
        ),
        ResultAreaRow(
          ResultAccentText("支払い:"),
          ResultAccentText(formatter.format(result.pay)),
        ),
        ResultAreaRow(
          ResultText("クーポン:"),
          ResultText(formatter.format(result.coupone)),
        ),
      ],
    );
  }
}
