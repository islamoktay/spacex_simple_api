import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/core/dependency_injection/di.dart';
import 'package:spacex_simple_api/core/utils/date_util/date_util.dart';
import 'package:spacex_simple_api/feature/home/presentation/bloc/home_bloc.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/info_item.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/patch_image_body.dart';
import '../../../../core/widgets/custom_scaffold.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: CustomScaffold(
        body: BlocProvider.value(
          value: sl<HomeBloc>(),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final item = state.rocketInfoList.last;

              return RefreshIndicator(
                onRefresh: () async =>
                    sl<HomeBloc>().add(const HomeEvent.getRocketInfo()),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    PatchImageBody(rocketInfo: item),
                    SizedBox(height: 10.h),
                    InfoItem(
                      header: 'Details',
                      content: item.details,
                    ),
                    InfoItem(
                      header: 'Flight Number',
                      content: item.flightNumber.toString(),
                    ),
                    InfoItem(
                      header: 'Date',
                      content: sl<DateUtil>()
                          .dateToIDayIMonthIYear(date: item.dateUtc),
                    ),
                    InfoItem(
                      header: 'Status',
                      content: item.success ?? false ? 'Successful' : 'Fail',
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
