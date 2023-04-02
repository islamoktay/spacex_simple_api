import 'package:auto_route/auto_route.dart';
import 'router_path.dart';
import '../../feature/home/presentation/view/home_view.dart';
import '../../feature/splash/presentation/view/splash_view.dart';

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
