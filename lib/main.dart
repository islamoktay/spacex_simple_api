import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/base/spacex_simple.api.dart';
import 'core/dependency_injection/di.dart' as di;

Future<void> main() async {
  await _initMethods();
  di.sl.allReady().then((value) => runApp(const SpaceXSimpleApi()));
}

Future<void> _initMethods() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
