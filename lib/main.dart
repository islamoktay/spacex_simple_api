import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spacex_simple_api/core/dependency_injection/di.dart' as di;

import 'core/base/spacex_simple.api.dart';

Future<void> main() async {
  await _initMethods();
  di.sl.allReady().then((value) => runApp(const SpaceXSimpleApi()));
}

Future<void> _initMethods() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
