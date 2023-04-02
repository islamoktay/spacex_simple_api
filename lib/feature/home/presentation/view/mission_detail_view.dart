import 'package:flutter/material.dart';
import 'package:spacex_simple_api/core/constants/assets.gen.dart';
import 'package:spacex_simple_api/core/theme/app_colors.dart';
import 'package:spacex_simple_api/core/widgets/custom_scaffold.dart';
import 'package:spacex_simple_api/feature/home/data/model/rocket_info.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/item_body.dart';

class MissionDetailView extends StatelessWidget {
  const MissionDetailView({super.key, required this.item});
  final RocketInfo item;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Assets.lottie.spaceshipLottie.lottie(),
        backgroundColor: AppColors.middleBlueColor,
        elevation: 0,
      ),
      body: ItemBody(item: item),
    );
  }
}
