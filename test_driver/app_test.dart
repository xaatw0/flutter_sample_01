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

    final keyClearFinder = find.byValueKey("clear");
    final keyDeleteFinder = find.byValueKey("delete");

    final priceValueFinder = find.byValueKey("price_value");
    final minusValueFinder = find.byValueKey("minus_value");
    final payValueFinder = find.byValueKey("pay_value");
    final couponValueFinder = find.byValueKey("coupon_value");

    final keyPersonFinder = find.byValueKey("face");
    final poeple1Finder = find.text("1名");
    final poeple5Finder = find.text("5名");
    final okFinder = find.text("OK");

    final keyStayFinder = find.byValueKey("hotel");
    final stay0Finder = find.text("日帰り");
    final stay5Finder = find.text("5泊6日");

    final keyThemeFinder = find.byValueKey("ThemeButton");

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      final health = await driver.checkHealth();
      if (health.status == HealthStatus.bad) {
        fail("Flutter driver が起動せず");
      }
    });

    setUp(() async {
      await driver.tap(keyClearFinder);
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

    test("数字をタップ", () async {
      expect(await driver.getText(priceValueFinder), "0");
      await driver.tap(key1Finder);
      await driver.tap(key2Finder);
      await driver.tap(key3Finder);
      await driver.tap(key4Finder);
      await driver.tap(key5Finder);
      await driver.tap(key6Finder);
      await driver.tap(key7Finder);
      await driver.tap(key8Finder);
      await driver.tap(key0Finder);
      await driver.tap(key9Finder);
      await driver.tap(key00Finder);
      expect(await driver.getText(priceValueFinder), "123,456,780,900");
    });

    test("一人日帰り30000円", () async {
      expect(await driver.getText(priceValueFinder), "0");
      await driver.tap(key3Finder);
      await driver.tap(key00Finder);
      await driver.tap(key00Finder);
      expect(await driver.getText(priceValueFinder), "30,000");
      expect(await driver.getText(minusValueFinder), "7,000");
      expect(await driver.getText(couponValueFinder), "3,000");
      expect(await driver.getText(payValueFinder), "23,000");
    });
    test("一人日帰り10000円", () async {
      expect(await driver.getText(priceValueFinder), "0");
      await driver.tap(key1Finder);
      await driver.tap(key00Finder);
      await driver.tap(key00Finder);
      expect(await driver.getText(priceValueFinder), "10,000");
      expect(await driver.getText(minusValueFinder), "3,500");
      expect(await driver.getText(couponValueFinder), "2,000");
      expect(await driver.getText(payValueFinder), "6,500");
    });
    test("宿泊人数", () async {
      await driver.tap(keyPersonFinder);
      await driver.tap(poeple5Finder);
      await driver.tap(okFinder);
      expect(await driver.getText(keyPersonFinder), "5名");

      await driver.tap(keyPersonFinder);
      await driver.tap(poeple1Finder);
      await driver.tap(okFinder);
      expect(await driver.getText(keyPersonFinder), "1名");
    });

    test("宿泊日数", () async {
      await driver.tap(keyStayFinder);
      await driver.tap(stay5Finder);
      await driver.tap(okFinder);
      expect(await driver.getText(keyStayFinder), "5泊6日");

      await driver.tap(keyStayFinder);
      await driver.tap(stay0Finder);
      await driver.tap(okFinder);
      expect(await driver.getText(keyStayFinder), "日帰り");
    });

    test("削除・クリアボタン", () async {
      expect(await driver.getText(priceValueFinder), "0");

      await driver.tap(keyDeleteFinder);
      await driver.tap(keyDeleteFinder);
      await driver.tap(keyClearFinder);
      await driver.tap(keyClearFinder);

      await driver.tap(keyPersonFinder);
      await driver.tap(poeple5Finder);
      await driver.tap(okFinder);

      await driver.tap(keyStayFinder);
      await driver.tap(stay5Finder);
      await driver.tap(okFinder);

      expect(await driver.getText(priceValueFinder), "0");
      await driver.tap(key1Finder);
      await driver.tap(key00Finder);
      await driver.tap(key00Finder);
      await driver.tap(key00Finder);

      expect(await driver.getText(priceValueFinder), "1,000,000");
      expect(await driver.getText(minusValueFinder), "350,000");
      expect(await driver.getText(couponValueFinder), "150,000");
      expect(await driver.getText(payValueFinder), "650,000");

      await driver.tap(keyDeleteFinder);
      expect(await driver.getText(priceValueFinder), "100,000");
      expect(await driver.getText(minusValueFinder), "35,000");
      expect(await driver.getText(couponValueFinder), "15,000");
      expect(await driver.getText(payValueFinder), "65,000");

      await driver.tap(keyDeleteFinder);
      expect(await driver.getText(priceValueFinder), "10,000");
      expect(await driver.getText(minusValueFinder), "3,500");
      expect(await driver.getText(couponValueFinder), "2,000");
      expect(await driver.getText(payValueFinder), "6,500");

      await driver.tap(keyClearFinder);
      expect(await driver.getText(priceValueFinder), "0");
      expect(await driver.getText(minusValueFinder), "0");
      expect(await driver.getText(couponValueFinder), "0");
      expect(await driver.getText(payValueFinder), "0");
    });

    const String pathScreenshot = "./test_driver/screenshots";

    Future<void> screnshot(FlutterDriver driver, String testName) async {
      await driver.waitUntilNoTransientCallbacks();
      final pixels = await driver.screenshot();
      final file = File("$pathScreenshot/$testName.png");
      await file.writeAsBytes(pixels);
    }

    test("テーマボタン", () async {
      await screnshot(driver, "1ライトテーマ");
      await driver.tap(keyThemeFinder);
      await screnshot(driver, "2ダークテーマ");
      await driver.tap(keyThemeFinder);
      await screnshot(driver, "3ライトテーマ");
    });
  });
}
