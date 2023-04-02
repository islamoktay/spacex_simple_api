import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette_generator/palette_generator.dart';
import '../../../../core/constants/assets.gen.dart';
import '../../data/model/rocket_info.dart';
import 'patch_image_success_body.dart';

class PatchImageBody extends StatefulWidget {
  const PatchImageBody({
    super.key,
    required this.rocketInfo,
  });

  final RocketInfo? rocketInfo;

  @override
  State<PatchImageBody> createState() => _PatchImageBodyState();
}

class _PatchImageBodyState extends State<PatchImageBody> {
  // ignore: unused_field
  late PaletteGenerator _paletteGenerator;

  Future<PaletteGenerator> _updatePaletteGenerator() async {
    final String? url = widget.rocketInfo?.links?.patch?.small;
    if (url?.isNotEmpty ?? false) {
      return _paletteGenerator = await PaletteGenerator.fromImageProvider(
        NetworkImage(
          url!,
        ),
      );
    } else {
      throw Exception('Empty Icon URL');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PaletteGenerator>(
      future: _updatePaletteGenerator(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Padding(
              padding: EdgeInsets.only(
                top: 150.h,
                bottom: 100.h,
              ),
              child: Center(
                child: Assets.lottie.loadingLottie.lottie(height: 80.h),
              ),
            );
          case ConnectionState.done:
            return PatchImageSuccessBody(
              color: snapshot.data?.dominantColor?.color,
              name: widget.rocketInfo?.name,
              imageUrl: widget.rocketInfo?.links?.patch?.small ?? '',
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
