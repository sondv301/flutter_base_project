import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// Author: sondv
/// Created 07/12/2023 at 15:19

class AppEmptyWidget extends StatelessWidget {
  const AppEmptyWidget({
    super.key,
    this.message = "Không có dữ liệu",
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.data_object),
          const Gap(8),
          Text(message),
        ],
      ),
    );
  }
}
