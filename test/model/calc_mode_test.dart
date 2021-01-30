import 'dart:io';

import 'package:flutter_app_01/model/calc_model.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GotoModel target;
  setUp(() {
    target = GotoModel();
  });

  group("CalcEnumのテスト", () {
    test("値", () {
      expect(CalcKey.KEY_0.index, 0);
      expect(CalcKey.KEY_1.index, 1);
      expect(CalcKey.KEY_9.index, 9);
      expect(CalcKey.KEY_00.index, 10);
      expect(CalcKey.KEY_DEL.index, 11);
      expect(CalcKey.KEY_CLEAR.index, 12);
    });
  });
  test("インデックス", () {
    expect(CalcKey.values[0], CalcKey.KEY_0);
  });
}
