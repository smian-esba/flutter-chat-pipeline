import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_chat_demo/main_dev.dart' as app;

void main() {
  // This line enables the extension.
  enableFlutterDriverExtension();

  // Call the `main()` function of the app, or call `runApp` with
  // any widget you are interested in testing.
  app.main();
}