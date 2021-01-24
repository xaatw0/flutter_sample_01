import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/atom/result_text.dart';

class ResultArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ResultText("総額:"),
            ResultText("123,456"),
          ],
        ),
        Row(
          children: [
            ResultText("割引:"),
            ResultText("123,456"),
          ],
        ),
        Row(
          children: [
            ResultText("支払い:"),
            ResultText("123,456"),
          ],
        ),
        Row(
          children: [
            ResultText("クーポン:"),
            ResultText("123,456"),
          ],
        ),
      ],
    );
  }
}
