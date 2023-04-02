import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/core/dependency_injection/di.dart';
import 'package:spacex_simple_api/core/router/route_management.gr.dart';
import 'package:spacex_simple_api/core/utils/snack_bar/global_variable.dart';

class SpaceXSimpleApi extends StatelessWidget {
  const SpaceXSimpleApi({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
        return MaterialApp.router(
          scaffoldMessengerKey: GlobalVariable.scaffoldMessengerKey,
          title: 'SpaceX Simple Api',
          debugShowCheckedModeBanner: false,
          routerDelegate: sl<AppRouter>().delegate(
            initialRoutes: [
              const SplashRoute(),
            ],
          ),
          routeInformationParser: sl<AppRouter>().defaultRouteParser(),
        );
      },
    );
  }
}
