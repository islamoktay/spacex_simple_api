import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/core/constants/assets.gen.dart';
import 'package:spacex_simple_api/core/theme/app_colors.dart';
import 'package:spacex_simple_api/core/theme/custom_text_styles.dart';

class PatchImageErrorBody extends StatelessWidget {
  const PatchImageErrorBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Assets.lottie.errorLottie.lottie(),
            Positioned(
              top: 30.h,
              child: Text(
                'Sorry! Patch Image not available.',
                style: CustomTextStyles.boldText18.copyWith(
                  color: AppColors.darkBlueColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
