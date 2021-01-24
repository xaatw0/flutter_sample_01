import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/atom/result_text.dart';

class ResultArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResultAreaRow(
          ResultText("総額:"),
          ResultText("123,456"),
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

class ResultAreaRow extends StatelessWidget {
  Widget textAtom;
  Widget numberAtom;

  ResultAreaRow(
    this.textAtom,
    this.numberAtom, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: textAtom),
        Expanded(flex: 2, child: numberAtom),
      ],
    );
  }
}
