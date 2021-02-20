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
  });
}
