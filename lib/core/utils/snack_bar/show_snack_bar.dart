import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/custom_text_styles.dart';
import 'global_variable.dart';

void customSnackBar({
  required String content,
  Color? color,
}) {
  GlobalVariable.scaffoldMessengerKey.currentState!.showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.only(bottom: 64),
      backgroundColor: Colors.transparent,
      content: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: AppColors.blackColor.withOpacity(.1),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color ?? AppColors.warningColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    content,
                    style: CustomTextStyles.boldText14
                        .copyWith(color: Colors.white),
                    maxLines: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
    ),
  );
}
