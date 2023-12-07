import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/color.dart';
import 'package:flutter_base_project/src/configs/text_style.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:01

void showSnackBar({required BuildContext context, required String message, IconData? icon}) {
  const Duration snackBarDisplayDuration = Duration(milliseconds: 1000);
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: AppColors.secondary,
        duration: snackBarDisplayDuration,
        content: Row(
          children: [
            Icon(
              icon ?? Icons.check,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Text(
              message,
              style: AppTextStyle.regular(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
}
