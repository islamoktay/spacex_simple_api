import 'package:flutter/material.dart';
import 'package:spacex_simple_api/core/constants/widget_keys.dart';
import '../../../../core/dependency_injection/di.dart';
import '../../../../core/router/route_management.gr.dart';
import '../../../../core/router/router_path.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../../core/constants/assets.gen.dart';
import '../../../../core/widgets/custom_scaffold.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    _appStartFun();
    return CustomScaffold(
      body: Center(
        key: const Key(SpaceXSimpleAppKeys.splashAnimation),
        child: Assets.lottie.spaceshipLottie.lottie(),
      ),
    );
  }

  void _appStartFun() {
    sl<HomeBloc>().add(const HomeEvent.getRocketInfo());
    Future.delayed(const Duration(seconds: 2)).whenComplete(
      () => sl<AppRouter>().pushNamed(RouterPath.homeView),
    );
  }
}
