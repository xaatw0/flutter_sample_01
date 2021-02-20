import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import "package:test/test.dart";

void main() {
  group("GOTOトラベル計算機", () {
    final key1Finder = find.byValueKey("1");
    final key2Finder = find.byValueKey("2");
    final key3Finder = find.byValueKey("3");
    final key4Finder = find.byValueKey("4");
    final key5Finder = find.byValueKey("5");
    final key6Finder = find.byValueKey("6");
    final key7Finder = find.byValueKey("7");
    final key8Finder = find.byValueKey("8");
    final key9Finder = find.byValueKey("9");
    final key0Finder = find.byValueKey("0");
    final key00Finder = find.byValueKey("00");

    final priceValueFinder = find.byValueKey("price_value");
    final minusValueFinder = find.byValueKey("minus_value");
    final payValueFinder = find.byValueKey("pay_value");
    final couponValueFinder = find.byValueKey("coupon_value");

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      final health = await driver.checkHealth();
      if (health.status == HealthStatus.bad) {
        fail("Flutter driver が起動せず");
      }
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test("1をタップ", () async {
      expect(await driver.getText(priceValueFinder), "0");
      await driver.tap(key1Finder);
      expect(await driver.getText(priceValueFinder), "1");
      await driver.tap(key1Finder);
      expect(await driver.getText(priceValueFinder), "11");
    });
  });
}
