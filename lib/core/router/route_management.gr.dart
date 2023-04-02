// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../feature/home/data/model/rocket_info.dart' as _i6;
import '../../feature/home/presentation/view/home_view.dart' as _i2;
import '../../feature/home/presentation/view/mission_detail_view.dart' as _i3;
import '../../feature/splash/presentation/view/splash_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    MissionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MissionDetailRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.MissionDetailView(
          key: args.key,
          item: args.item,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashRoute.name,
          path: '/splashView',
        ),
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          MissionDetailRoute.name,
          path: '/missionDetailView',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splashView',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.MissionDetailView]
class MissionDetailRoute extends _i4.PageRouteInfo<MissionDetailRouteArgs> {
  MissionDetailRoute({
    _i5.Key? key,
    required _i6.RocketInfo item,
  }) : super(
          MissionDetailRoute.name,
          path: '/missionDetailView',
          args: MissionDetailRouteArgs(
            key: key,
            item: item,
          ),
        );

  static const String name = 'MissionDetailRoute';
}

class MissionDetailRouteArgs {
  const MissionDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i5.Key? key;

  final _i6.RocketInfo item;

  @override
  String toString() {
    return 'MissionDetailRouteArgs{key: $key, item: $item}';
  }
}
