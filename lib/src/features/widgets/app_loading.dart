import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// Author: sondv
/// Created 07/12/2023 at 15:19

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({
    super.key,
    this.message = "Đang tải...",
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const Gap(8),
          Text(message),
        ],
      ),
    );
  }
}
