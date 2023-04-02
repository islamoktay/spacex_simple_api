import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/core/theme/app_colors.dart';
import 'package:spacex_simple_api/core/theme/custom_text_styles.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    super.key,
    required this.header,
    required this.content,
  });

  final String header;
  final String? content;

  @override
  Widget build(BuildContext context) {
    if (content?.isNotEmpty ?? false) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              header,
              style: CustomTextStyles.boldText18,
            ),
          ),
          Divider(
            height: 12.h,
            color: AppColors.blackColor,
            indent: 16,
            endIndent: 180.w,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              content!,
              style: CustomTextStyles.boldText14,
            ),
          ),
          SizedBox(height: 14.h),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
