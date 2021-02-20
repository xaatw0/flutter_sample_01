import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/molecule/calc_button.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("SelectButtonのテスト1", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SelectButton(Icons.wb_sunny, "test", null, lightThema),
      ),
    );

    await tester.pump();
    expect(find.text("test"), findsOneWidget);
    expect(find.text("2"), findsNothing);
  });
}
