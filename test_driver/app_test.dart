import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import "package:test/test.dart";

void main() {
  group("1を押す", () {
    final key1Finder = find.byValueKey("1");
    final priceValueFinder = find.byValueKey("price_value");

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
