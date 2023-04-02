import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/core/theme/app_colors.dart';
import 'package:spacex_simple_api/core/theme/custom_text_styles.dart';

class PatchImageNameTextBody extends StatelessWidget {
  const PatchImageNameTextBody({
    super.key,
    required this.color,
    required this.name,
  });

  final Color? color;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.h,
      left: 16,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColors.lightBlueColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          name,
          style: CustomTextStyles.boldText18.copyWith(
            color: color ?? AppColors.blackColor,
          ),
        ),
      ),
    );
  }
}
