import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_simple_api/core/constants/widget_keys.dart';
import '../../../../core/constants/assets.gen.dart';
import '../../../../core/dependency_injection/di.dart';
import '../bloc/home_bloc.dart';
import '../widgets/home_page_bottom_sheet.dart';
import '../widgets/item_body.dart';
import '../../../../core/widgets/custom_scaffold.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: CustomScaffold(
        bottomSheet: const HomePageBottomSheet(
          key: Key(SpaceXSimpleAppKeys.bottomSheet),
        ),
        body: BlocProvider.value(
          value: sl<HomeBloc>(),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final item = state.rocketInfoList.first;
              return CustomScrollView(
                key: const Key(SpaceXSimpleAppKeys.scrollView),
                slivers: [
                  CupertinoSliverRefreshControl(
                    builder: (
                      context,
                      refreshState,
                      pulledExtent,
                      refreshTriggerPullDistance,
                      refreshIndicatorExtent,
                    ) =>
                        Assets.lottie.loadingLottie.lottie(),
                    onRefresh: () async =>
                        sl<HomeBloc>().add(const HomeEvent.getRocketInfo()),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ItemBody(item: item);
                      },
                      childCount: 1,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
