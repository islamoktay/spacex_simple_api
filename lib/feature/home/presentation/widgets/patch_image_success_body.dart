import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/patch_image_error_body.dart';
import 'package:spacex_simple_api/feature/home/presentation/widgets/patch_image_name_text_body.dart';

class PatchImageSuccessBody extends StatelessWidget {
  const PatchImageSuccessBody({
    super.key,
    required this.color,
    required this.name,
    required this.imageUrl,
  });
  final Color? color;
  final String? name;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 420.h,
          color: color ?? Colors.white,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator.adaptive(
              value: downloadProgress.progress,
            ),
            errorWidget: (context, url, error) => const PatchImageErrorBody(),
          ),
        ),
        if (name?.isNotEmpty ?? false)
          PatchImageNameTextBody(
            color: color,
            name: name!,
          ),
      ],
    );
  }
}
