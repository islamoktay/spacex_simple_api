import 'package:spacex_simple_api/core/constants/widget_keys.dart';

import 'base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class SplashViewTest extends BaseView {
  SplashViewTest(super.tester);

  final Finder splashAnimationFinder = find.byKey(
    const Key(SpaceXSimpleAppKeys.splashAnimation),
  );

  Future<void> verifySplashViewIsDisplayed() async {
    await pumpUntilFound(splashAnimationFinder);
  }
}
