import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/molecule/calc_button.dart';
import 'package:flutter_test/flutter_test.dart';

void min() {
  testWidgets("CalcButtonのテスト1", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CalcButton("1", null, lightThema),
      ),
    );
  });
}
