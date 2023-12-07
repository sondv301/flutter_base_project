import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/enums.dart';
import 'package:flutter_base_project/src/core/storages/provider.dart';
import 'package:flutter_base_project/src/features/dialogs/message.dart';
import 'package:flutter_base_project/src/features/dialogs/processing.dart';
import 'package:flutter_base_project/src/features/pages/home/provider.dart';
import 'package:flutter_base_project/src/features/pages/login/provider.dart';
import 'package:flutter_base_project/src/features/widgets/button.dart';
import 'package:flutter_base_project/src/utils/navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:50
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  _listenEvent(BuildContext context, WidgetRef ref) =>
      (PageEventCommon? previous, PageEventCommon next) {
        switch (next) {
          case PageEventCommon.normal:
            break;
          case PageEventCommon.processing:
            showProcessingDialog(
              context,
              message: "Login...",
            );
          case PageEventCommon.success:
            pop(context);
            ref.invalidate(checkLoginProvider);
            break;
          case PageEventCommon.error:
            pop(context);
            showMessageDialog(
              context,
              message: ref.watch(loginProvider.select((value) => value.errorMessage)),
            );
            break;
        }
      };
  @override
  Widget build(BuildContext context) {
    ref.listen<PageEventCommon>(
      loginProvider.select((value) => value.event),
      _listenEvent(context, ref),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: IconButton.filledTonal(
          onPressed: () {
            ref.read(loginProvider.notifier).onLogin();
          },
          icon: const Icon(Icons.login),
        ),
      ),
    );
  }
}
