import 'package:auto_route/auto_route.dart';
import 'package:spacex_simple_api/core/router/router_path.dart';
import 'package:spacex_simple_api/feature/home/presentation/view/home_view.dart';
import 'package:spacex_simple_api/feature/splash/presentation/view/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: RouterPath.splashView,
      page: SplashView,
    ),
    AutoRoute(
      path: RouterPath.homeView,
      page: HomeView,
    ),
  ],
)
class $AppRouter {}
