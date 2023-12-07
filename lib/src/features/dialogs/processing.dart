import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:05

void showProcessingDialog(
  BuildContext context, {
  String message = "Đang xử lý...",
}) {
  showDialog(
    context: context,
    useRootNavigator: false,
    barrierDismissible: false,
    builder: (context) => _ProcessingWidget(message: message),
  );
}

class _ProcessingWidget extends StatelessWidget {
  final String message;
  final Widget? icon;
  final TextStyle? messageStyle;
  final Color? backgroundColor;
  final double? borderRadiusValue;
  final double? width;
  final double? height;
  const _ProcessingWidget({
    Key? key,
    this.message = "Đang xử lý...",
    this.icon,
    this.messageStyle,
    this.backgroundColor,
    this.borderRadiusValue,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: width ?? 200,
            height: height ?? 120,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            decoration: BoxDecoration(
                color: backgroundColor ?? const Color(0xfff2f2f2).withOpacity(0.8),
                borderRadius: BorderRadius.circular(borderRadiusValue ?? 14)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon ?? const CircularProgressIndicator(),
                const SizedBox(height: 8),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: messageStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
