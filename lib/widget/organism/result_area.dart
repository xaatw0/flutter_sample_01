import 'package:flutter/material.dart';
import 'package:flutter_app_01/notifier/int_value_notifier.dart';
import 'package:flutter_app_01/notifier/result_notifier.dart';
import 'package:flutter_app_01/notifier/theme_notifier.dart';
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
    final colorPallet = useProvider(themeProvider.state);

    return Column(
      children: [
        ResultAreaRow(
          ResultText("総額:", colorPallet),
          ResultText(formatter.format(price), colorPallet),
        ),
        ResultAreaRow(
          ResultText("割引:", colorPallet),
          ResultText(formatter.format(result.minus), colorPallet),
        ),
        ResultAreaRow(
          ResultAccentText("支払い:", colorPallet),
          ResultAccentText(formatter.format(result.pay), colorPallet),
        ),
        ResultAreaRow(
          ResultText("クーポン:", colorPallet),
          ResultText(formatter.format(result.coupone), colorPallet),
        ),
      ],
    );
  }
}
