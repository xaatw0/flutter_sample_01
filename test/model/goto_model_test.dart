import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GotoModel target;
  setUp(() {
    target = GotoModel();
  });

  group("ベース", () {
    test("初期値", () {
      expect(target.price, 0);
    });

    test("価格を入れる", () {
      expect(target.price, 0);
      target.setPrice(100);
      expect(target.price, 100);
    });

    test("宿泊日数", () {
      expect(target.stay, 0);
      target.setStay(1);
      expect(target.stay, 1);
    });

    test("宿泊人数", () {
      expect(target.person, 1);
      target.setPerson(2);
      expect(target.person, 2);
    });
  });

  group("計算", () {
    test("1人1泊", () {});
    test("1人2泊", () {});
    test("1人日帰り", () {});
  });
}
