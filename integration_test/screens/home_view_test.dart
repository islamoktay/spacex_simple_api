import 'package:spacex_simple_api/core/constants/widget_keys.dart';

import 'base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class HomeViewTest extends BaseView {
  HomeViewTest(super.tester);

  final Finder scrollViewFinder = find.byKey(
    const Key(SpaceXSimpleAppKeys.scrollView),
  );
  final Finder bottomSheetFinder = find.byKey(
    const Key(SpaceXSimpleAppKeys.bottomSheet),
  );
  final Finder imageBodyFinder = find.byKey(
    const Key(SpaceXSimpleAppKeys.imageBody),
  );
  final Finder detailsFinder = find.byKey(
    const Key(SpaceXSimpleAppKeys.details),
  );
  final Finder flightNumberFinder = find.byKey(
    const Key(SpaceXSimpleAppKeys.flightNumber),
  );

  Future<void> verifyHomeViewIsDisplayed() async {
    await pumpUntilFound(scrollViewFinder);
    await pumpUntilFound(bottomSheetFinder);
    await pumpUntilFound(imageBodyFinder);
    await pumpUntilFound(detailsFinder);
    await pumpUntilFound(flightNumberFinder);
  }
}
