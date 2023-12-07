import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/color.dart';
import 'package:flutter_base_project/src/features/widgets/button.dart';
import 'package:gap/gap.dart';

/// Author: sondv
/// Created 07/12/2023 at 15:19

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    this.message = "Có lỗi xảy ra!",
    this.onRetry,
  });
  final String message;
  final VoidCallback? onRetry;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: AppColors.red,
          ),
          const Gap(8),
          Text(message),
          const Gap(16),
          AppButtonMainWidget(
            onPressed: () => onRetry?.call(),
            textAction: "Thử lại",
          ),
        ],
      ),
    );
  }
}
