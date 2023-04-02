import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_scaffold.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomScaffold(
      body: Center(child: Text('splashView'),),
    );
  }
}
