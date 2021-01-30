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
    test("価", () {
      expect(CalcKey.KEY_0.index, 0);
      expect(CalcKey.KEY_1.index, 1);
    });
  });
  test("インデックス", () {
    expect(target.price, 0);
  });
}
