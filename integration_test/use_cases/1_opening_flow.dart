// ignore_for_file: file_names

import 'package:flutter_test/flutter_test.dart';
import '../app_test.dart';
import '../screens/home_view_test.dart';
import '../screens/splash_view_test.dart';

void executeTest() {
  testWidgets(
    '**1 Should Open App and See the latest Rocket Mission',
    (tester) async {
      // Screens
      final splashView = SplashViewTest(tester);
      final homeView = HomeViewTest(tester);

      // App opening and navigating to HomeView
      await runAppIntegrationTest();

      // Verify SplashView
      await splashView.verifySplashViewIsDisplayed();
      // Verify SplashView
      await homeView.verifyHomeViewIsDisplayed();
    },
  );
}
