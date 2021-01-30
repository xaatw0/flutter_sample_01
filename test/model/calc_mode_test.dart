import 'dart:io';

import 'package:flutter_app_01/model/calc_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CalcModel target;
  setUp(() {
    target = CalcModel();
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

    test("インデックス", () {
      expect(CalcKey.values[0], CalcKey.KEY_0);
    });
  });

  group("入力のテスト", () {
    test("数値", () {
      expect(target.value, 0);
      target.push(CalcKey.KEY_0);
      expect(target.value, 0);
      target.push(CalcKey.KEY_00);
      expect(target.value, 0);

      target.push(CalcKey.KEY_1);
      expect(target.value, 1);
      target.push(CalcKey.KEY_2);
      expect(target.value, 12);
      target.push(CalcKey.KEY_3);
      expect(target.value, 123);
      target.push(CalcKey.KEY_4);
      expect(target.value, 1234);
      target.push(CalcKey.KEY_5);
      expect(target.value, 12345);
      target.push(CalcKey.KEY_6);
      expect(target.value, 123456);
      target.push(CalcKey.KEY_7);
      expect(target.value, 1234567);
      target.push(CalcKey.KEY_8);
      expect(target.value, 12345678);
      target.push(CalcKey.KEY_9);
      expect(target.value, 123456789);
      target.push(CalcKey.KEY_0);
      expect(target.value, 1234567890);
      target.push(CalcKey.KEY_00);
      expect(target.value, 123456789000);
    });
  });
}
