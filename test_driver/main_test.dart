// Imports the Flutter Driver API.
import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'package:screenshots/screenshots.dart';

void main() {
  group('Counter App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('Events');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
//      var duration = Duration(5000);
//      sleep(const Duration(seconds: 5));
//      driver = await FlutterDriver.connect(dartVmServiceUrl: "http://127.0.0.1:8888");
      driver = await FlutterDriver.connect();
      // Wait for the first frame to be rasterized.
      await driver.waitUntilFirstFrameRasterized();

    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

//    test('starts at 0', () async {
//      // Use the `driver.getText` method to verify the counter starts at 0.
//      expect(await driver.getText(counterTextFinder), "0");
//    });

    test('increments the counter', () async {
      // Initialize screenshots
      final config = Config();
//      await driver.enterText("862222");
//      await driver.tap(find.byValueKey('Home'));
      Health health = await driver.checkHealth();
      print(health.status);
//      await driver.tap(find.byType('CircleAvatar'));
//      await driver.tap(find.byValueKey('widget.settings.sessionFeedback'));
//      await driver.tap(find.pageBack());
////      sleep(const Duration(seconds: 10));
//      print(health.status);
////      driver.tap()
////      await driver.tap(find.byType('Allow'));
////      await driver.enterText("862222");
////      sleep(const Duration(seconds: 10));
//      await screenshot(driver, config, 'myscreenshot1');
//      // First, tap the button.
//      await driver.tap(find.text("Events"));
//      await screenshot(driver, config, 'myscreenshot2');
//      await driver.tap(find.pageBack());
//
//      await driver.tap(find.text("Articles"));
//      await screenshot(driver, config, 'myscreenshot3');
//      await driver.tap(find.pageBack());
//      print(await driver.getText(find.text("Home")));
//      print(find.text("Home"));
////      await driver.tap(find.text("Home"));
//
////      await driver.tap(driver.find.text("Home"));
//      find.descendant(of: find.text('Home'), matching: find.byType("RichText"));

//      await driver.tap(find.pageBack());

      await screenshot(driver, config, 'myscreenshot3');

//      await screenshot(driver, config, 'myscreenshot4');

//      sleep(const Duration(seconds: 5));
//      await driver.enterText("862222");
      // Then, verify the counter text is incremented by 1.
//      expect(await driver.getText(counterTextFinder), "1");
    });
  });
}
