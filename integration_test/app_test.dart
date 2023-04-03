import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:integration_test/integration_test.dart';
import 'package:spacex_simple_api/core/base/spacex_simple.api.dart';
import 'package:spacex_simple_api/core/dependency_injection/di.dart' as di;

import 'use_cases/1_opening_flow.dart' as opening_flow;

Future<void> main() async {
  /// To run the integration test on terminal type:
  /// flutter drive --driver=test_driver/integration_test.dart --target=integration_test/app_test.dart
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  opening_flow.executeTest();
}

Future<void> runAppIntegrationTest() async {
  print('Inside Integration Test');
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  di.sl.allReady().whenComplete(
        () => runApp(
          SpaceXSimpleApi(
            key: UniqueKey(),
          ),
        ),
      );
}
