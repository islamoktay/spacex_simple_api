import 'package:flutter/material.dart';
import 'package:spacex_simple_api/core/widgets/custom_scaffold.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Center(
        child: Text('home view'),
      ),
    );
  }
}
