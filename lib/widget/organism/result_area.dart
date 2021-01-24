import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/atom/result_text.dart';
import 'package:flutter_app_01/widget/molecule/result_area_row.dart';

class ResultArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResultAreaRow(
          ResultText("総額:"),
          ResultText("123,456"),
        ),
        ResultAreaRow(
          ResultText("割引:"),
          ResultText("123,456"),
        ),
        ResultAreaRow(
          ResultText("支払い:"),
          ResultText("123,456"),
        ),
        ResultAreaRow(
          ResultText("クーポン:"),
          ResultText("123,456"),
        ),
      ],
    );
  }
}
