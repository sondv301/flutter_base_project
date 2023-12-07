import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/color.dart';
import 'package:flutter_base_project/src/configs/text_style.dart';
import 'package:flutter_base_project/src/features/widgets/button.dart';
import 'package:gap/gap.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:07

Future<bool?> showConfirmActionDialog(
  BuildContext context, {
  String title = "Message",
  String message = "Content",
  String actionTitle = "Đồng ý",
  VoidCallback? action,
}) async {
  var result = await showDialog(
    context: context,
    useRootNavigator: false,
    barrierDismissible: false,
    builder: (contextDialog) {
      return AlertDialog(
        title: Text(
          title,
          style: AppTextStyle.regular(fontSize: 16),
        ),
        content: Text(
          message,
          style: AppTextStyle.regular(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          AppButtonCancelWidget(
            onPressed: () {
              Navigator.pop(contextDialog, false);
            },
          ),
          AppButtonMainWidget(
            onPressed: () {
              Navigator.pop(contextDialog, true);
              action?.call();
            },
            textAction: actionTitle,
          ),
        ],
      );
    },
  );
  return result;
}
