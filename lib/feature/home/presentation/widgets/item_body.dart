import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/dependency_injection/di.dart';
import '../../../../core/utils/date_util/date_util.dart';
import '../../data/model/rocket_info.dart';
import 'info_item.dart';
import 'patch_image_body.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({super.key, required this.item});
  final RocketInfo item;
  @override
  Widget build(BuildContext context) {
    return Column(
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
          content: sl<DateUtil>().dateToIDayIMonthIYear(date: item.dateUtc),
        ),
        InfoItem(
          header: 'Status',
          content: item.success ?? false ? 'Successful' : 'Fail',
        ),
      ],
    );
  }
}
