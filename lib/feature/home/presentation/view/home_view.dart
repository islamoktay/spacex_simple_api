import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/core/constants/assets.gen.dart';
import 'package:spacex_simple_api/core/dependency_injection/di.dart';
import 'package:spacex_simple_api/core/utils/date_util/date_util.dart';
import 'package:spacex_simple_api/feature/home/presentation/bloc/home_bloc.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/home_page_bottom_sheet.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/info_item.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/item_body.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/patch_image_body.dart';
import '../../../../core/widgets/custom_scaffold.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: CustomScaffold(
        bottomSheet: const HomePageBottomSheet(),
        body: BlocProvider.value(
          value: sl<HomeBloc>(),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final item = state.rocketInfoList.first;
              return CustomScrollView(
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
