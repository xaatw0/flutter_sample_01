import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:flutter_app_01/widget/molecule/calc_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("CalcButtonのテスト1", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CalcButton("1", null, lightThema),
      ),
    );

    await tester.pump();
    expect(find.text("1"), findsOneWidget);
    expect(find.text("2"), findsNothing);
  });
  testWidgets("CalcButtonのテスト2", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CalcButton("2", null, lightThema),
      ),
    );

    await tester.pump();
    expect(find.text("2"), findsOneWidget);
    expect(find.text("1"), findsNothing);
  });

  testWidgets("CalcButtonのonTap", (WidgetTester tester) async {
    int number = 0;
    var onTap = () {
      number++;
    };

    await tester.pumpWidget(
      MaterialApp(
        home: CalcButton("1", onTap, lightThema),
      ),
    );

    await tester.pump();

    expect(number, 0);
    await tester.tap((find.text("1")));
    expect(number, 1);
    await tester.tap((find.text("1")));
    expect(number, 2);
  });
}
