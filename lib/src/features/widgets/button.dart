import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/color.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:33

class AppButtonMainWidget extends StatelessWidget {
  const AppButtonMainWidget({
    super.key,
    this.onPressed,
    this.textAction,
    this.backgroundColor,
    this.textColor,
  });
  final String? textAction;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => onPressed?.call(),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? AppColors.primary,
        ),
      ),
      child: Text(textAction ?? "Xác nhận"),
    );
  }
}

class AppButtonCancelWidget extends StatelessWidget {
  const AppButtonCancelWidget({
    super.key,
    this.onPressed,
    this.textAction,
    this.backgroundColor,
    this.textColor,
  });
  final String? textAction;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => onPressed?.call(),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? AppColors.grey,
        ),
      ),
      child: Text(textAction ?? "Huỷ"),
    );
  }
}
