import 'dart:io';

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

  group("お一人様計算", () {
    test("1人1泊", () {
      target.setPerson(1);
      target.setStay(1);
      target.setPrice(20000);
      expect(target.price, 20000);

      expect(target.getMinus(), 7000);
      expect(target.getPay(), 13000);
      expect(target.getCoupone(), 3000);
    });

    test("1人1泊クーポン四捨五入", () {
      target.setPerson(1);
      target.setStay(1);
      target.setPrice(30000);
      expect(target.price, 30000);

      expect(target.getMinus(), 10500);
      expect(target.getPay(), 19500);
      expect(target.getCoupone(), 5000);
    });

    test("1人1泊クーポン制限超え", () {
      target.setPerson(1);
      target.setStay(1);
      target.setPrice(100000);
      expect(target.price, 100000);

      expect(target.getMinus(), 14000);
      expect(target.getPay(), 86000);
      expect(target.getCoupone(), 6000);
    });

    test("1人2泊", () {
      target.setPerson(1);
      target.setStay(2);
      target.setPrice(100000);
      expect(target.price, 100000);

      expect(target.getMinus(), 28000);
      expect(target.getPay(), 72000);
      expect(target.getCoupone(), 12000);
    });
    test("1人日帰り高級", () {
      target.setPerson(1);
      target.setStay(0);
      target.setPrice(100000);
      expect(target.price, 100000);

      expect(target.getMinus(), 7000);
      expect(target.getPay(), 93000);
      expect(target.getCoupone(), 3000);
    });

    test("1人日帰り手頃", () {
      target.setPerson(1);
      target.setStay(0);
      target.setPrice(5000);
      expect(target.price, 5000);

      expect(target.getMinus(), 1750);
      expect(target.getPay(), 3250);
      expect(target.getCoupone(), 1000);
    });
  });

  group("お3人様計算", () {
    test("3人1泊", () {
      target.setPerson(3);
      target.setStay(1);
      target.setPrice(20000);
      expect(target.price, 20000);

      expect(target.getMinus(), 7000);
      expect(target.getPay(), 13000);
      expect(target.getCoupone(), 3000);
    });

    test("3人1泊クーポン制限超え", () {
      target.setPerson(3);
      target.setStay(1);
      target.setPrice(300000);
      expect(target.price, 300000);

      expect(target.getMinus(), 42000);
      expect(target.getPay(), 258000);
      expect(target.getCoupone(), 18000);
    });

    test("3人2泊", () {
      target.setPerson(1);
      target.setStay(2);
      target.setPrice(300000);
      expect(target.price, 300000);

      expect(target.getMinus(), 84000);
      expect(target.getPay(), 216000);
      expect(target.getCoupone(), 36000);
    });
    test("3人日帰り高級", () {
      target.setPerson(1);
      target.setStay(0);
      target.setPrice(300000);
      expect(target.price, 300000);

      expect(target.getMinus(), 21000);
      expect(target.getPay(), 279000);
      expect(target.getCoupone(), 9000);
    });

    test("3人日帰り手頃", () {
      target.setPerson(3);
      target.setStay(0);
      target.setPrice(10000);
      expect(target.price, 10000);

      expect(target.getMinus(), 3500);
      expect(target.getPay(), 6500);
      expect(target.getCoupone(), 2000);
    });
  });
}
