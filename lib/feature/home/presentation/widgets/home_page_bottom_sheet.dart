import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/core/theme/app_colors.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/home_page_bottom_sheet_content.dart';

class HomePageBottomSheet extends StatelessWidget {
  const HomePageBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (details) => _bottomSheetFun(context),
      onTap: () => _bottomSheetFun(context),
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: AppColors.darkBlueColor,
        ),
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          height: 4.h,
          width: 70.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightBlueColor,
          ),
        ),
      ),
    );
  }

  Future<dynamic> _bottomSheetFun(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.darkBlueColor,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) => const HomePageBottomSheetContent(),
    );
  }
}
