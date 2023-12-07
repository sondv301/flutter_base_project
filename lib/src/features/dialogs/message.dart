import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/text_style.dart';
import 'package:flutter_base_project/src/features/widgets/button.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:04

Future<void> showMessageDialog(
  BuildContext context, {
  String title = "Message",
  String message = "Connent Default",
  String textAction = "Xác nhận",
  bool useRootNavigator = false,
  bool barrierDismissible = false,
  TextStyle? titleStyle,
  TextStyle? contentStyle,
  double borderRadiusValue = 12,
  Color backgroundColorConfirm = const Color(0xff04683F),
  Color textColorConfirm = Colors.white,
}) async {
  await showDialog(
    context: context,
    useRootNavigator: useRootNavigator,
    barrierDismissible: barrierDismissible,
    builder: (context) => AlertDialog(
      title: Text(
        title,
        style: titleStyle ?? AppTextStyle.bold(fontSize: 16),
      ),
      content: Text(
        message,
        style: contentStyle ?? AppTextStyle.regular(),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadiusValue)),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        AppButtonMainWidget(
          onPressed: () {
            Navigator.pop(context);
          },
          textAction: textAction,
        ),
      ],
    ),
  );
}
