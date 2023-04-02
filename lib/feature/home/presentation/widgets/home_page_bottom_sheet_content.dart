import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/dependency_injection/di.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/custom_text_styles.dart';
import '../bloc/home_bloc.dart';
import 'old_rocket_item.dart';

class HomePageBottomSheetContent extends StatelessWidget {
  const HomePageBottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final list = [...state.rocketInfoList];
          list.removeAt(0);
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                height: 4.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightBlueColor,
                ),
              ),
              Text(
                'Older Missions',
                style: CustomTextStyles.boldText18.copyWith(
                  color: AppColors.lightBlueColor,
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView(
                  children: list.map((e) => OldRocketItem(item: e)).toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
