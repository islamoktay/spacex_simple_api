import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/assets.gen.dart';
import '../../../../core/dependency_injection/di.dart';
import '../../../../core/router/route_management.gr.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/custom_text_styles.dart';
import '../../../../core/utils/date_util/date_util.dart';
import '../../data/model/rocket_info.dart';

class OldRocketItem extends StatelessWidget {
  const OldRocketItem({
    super.key,
    required this.item,
  });

  final RocketInfo item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => sl<AppRouter>().push(MissionDetailRoute(item: item)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 10,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.smoothYellowColor,
          ),
          child: Row(
            children: [
              CachedNetworkImage(
                height: 80.h,
                imageUrl: item.links?.patch?.small ?? '',
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator.adaptive(
                  value: downloadProgress.progress,
                ),
                errorWidget: (context, url, error) =>
                    Assets.lottie.errorLottie.lottie(height: 80.h),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      item.name ?? '',
                      style: CustomTextStyles.boldText18,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    sl<DateUtil>().dateToIDayIMonthIYear(
                      date: item.dateUtc,
                    ),
                    style: CustomTextStyles.boldText14,
                  ),
                ],
              ),
              const Spacer(),
              if (item.success ?? false)
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              else
                const Icon(
                  Icons.cancel,
                  color: Colors.red,
                )
            ],
          ),
        ),
      ),
    );
  }
}
