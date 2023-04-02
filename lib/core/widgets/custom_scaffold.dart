import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.body, this.appBar});
  final Widget body;
  final PreferredSizeWidget? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: appBar,
      body: body,
    );
  }
}
