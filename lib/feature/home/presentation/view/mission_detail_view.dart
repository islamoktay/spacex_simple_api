import 'package:flutter/material.dart';
import '../../../../core/constants/assets.gen.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../data/model/rocket_info.dart';
import '../widgets/item_body.dart';

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
