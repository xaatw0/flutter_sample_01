import 'dart:io';

import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GotoModel target;
  setUp(() {
    target = GotoModel();
  });

  group("CalcEnumのテスト", () {
    test("初期値", () {
      expect(target.price, 0);
    });
  });
}
