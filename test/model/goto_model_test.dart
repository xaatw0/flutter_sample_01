import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GotoModel target;
  setUp(() {
    target = GotoModel();
  });

  group("ベース", () {
    test("初期値", () {
      expect(target.getPrice(), 0);
    });

    test("価格を入れる", () {
      expect(target.getPrice(), 0);
      target.setPrice(100);
      expect(target.getPrice(), 100);
    });

    test("宿泊日数", () {
      expect(target.get);
      target.setSay(1);
    });
  });
}
