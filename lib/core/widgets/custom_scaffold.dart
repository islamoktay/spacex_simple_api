import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.bottomSheet,
  });
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomSheet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: appBar,
      body: body,
      bottomSheet: bottomSheet,
    );
  }
}
