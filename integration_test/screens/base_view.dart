import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_simple_api/core/exceptions/client_exception.dart';

class BaseView {
  BaseView(this.tester);

  WidgetTester tester;

  final Finder screenScrollableView = find.byType(CustomScrollView);

  /// Verify the provided [Finder]
  Future<void> verifyElementIsDisplayed(
    Finder finder, {
    int timeout = 30,
    bool runUnsynchronized = false,
  }) async {
    if (runUnsynchronized) {
      await tester.runAsync(() async {
        expect(finder, findsOneWidget);
      });
    } else {
      expect(finder, findsOneWidget);
    }
  }

  Future<void> verifyElementIsDisplayedWithDescendant(
    Finder finder,
    Finder parentFinder, {
    int timeout = 30,
    bool runUnsynchronized = false,
  }) async {
    if (runUnsynchronized) {
      await tester.runAsync(() async {
        expect(
          find.descendant(of: parentFinder, matching: finder),
          findsOneWidget,
        );
      });
    } else {
      expect(finder, findsOneWidget);
    }
  }

  Future<void> pumpForSeconds(int seconds) async {
    var timerDone = false;
    Timer(Duration(seconds: seconds), () => timerDone = true);
    while (timerDone != true) {
      await tester.pump();
    }
  }

  Future<void> pumpUntilFound(
    Finder finder, {
    Duration timeout = const Duration(seconds: 30),
  }) async {
    bool timerDone = false;
    final timer = Timer(
      timeout,
      () => throw TimeoutException("Pump until has timed out"),
    );
    while (timerDone != true) {
      await tester.pump();

      final found = tester.any(finder);
      if (found) {
        timerDone = true;
      }
    }
    timer.cancel();
  }

  Future<void> verifyFontSize(
    Finder finder,
    Finder parentFinder,
    double value,
  ) async {
    final text = tester.widget(
      find.descendant(
        of: parentFinder,
        matching: finder,
      ),
    ) as Text;
    expect(text.style?.fontSize, equals(value));
  }

  Future<void> scrollTillElementIsVisible(
    Finder elementFinder, {
    Finder? parentFinder,
    double alignmentVal = 0.0,
    double dx = 0,
    double dy = 0,
    bool runUnsynchronized = false,
  }) async {
    parentFinder ??= find.byType(MaterialApp);

    if (runUnsynchronized) {
      await tester.runAsync(() async {
        await tester.dragFrom(tester.getCenter(parentFinder!), Offset(dx, dy));
      });
    } else {
      await tester.dragFrom(tester.getCenter(parentFinder), Offset(dx, dy));
    }
    sleep(const Duration(seconds: 1));
  }

  Future<void> scrollElement(
    Finder finder, {
    double dx = 0,
    double dy = 0,
    int timeout = 500,
  }) async {
    final dim = tester.getBottomRight(find.byType(MaterialApp));

    final newDx = dx != 0 ? (dim.dx * (dx / 100)) : 0;
    final newDy = dy != 0 ? (dim.dy * (dy / 100)) : 0;

    await tester.drag(finder, Offset(newDx.toDouble(), newDy.toDouble()));
  }

  Future<void> scrollUntilElementIsVisible({
    required Finder element,
    Finder? scrollableView,
    int retry = 10,
    int timeout = 5,
    double dy = -50,
    double dx = 0,
  }) async {
    scrollableView ??= screenScrollableView;
    for (var i = retry; i >= 0; i--) {
      await scrollElement(scrollableView, dy: dy, dx: dx);
      if (await isPresent(element)) {
        break;
      }
    }
  }

  Future<bool> isPresent(Finder finder) async {
    try {
      // await tester.waitFor(finder, timeout: Duration(seconds: 10));
      expect(finder, findsOneWidget);
      return true;
    } on IntegrationTestIsPresentException catch (e) {
      return false;
    }
  }

  Future<void> clickOn(Finder finder) async {
    await tester.tap(finder);
  }
}
