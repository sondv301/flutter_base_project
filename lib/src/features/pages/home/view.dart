import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/string.dart';
import 'package:flutter_base_project/src/core/storages/provider.dart';
import 'package:flutter_base_project/src/features/dialogs/confirm_action.dart';
import 'package:flutter_base_project/src/features/dialogs/message.dart';
import 'package:flutter_base_project/src/features/dialogs/processing.dart';
import 'package:flutter_base_project/src/features/pages/home/provider.dart';
import 'package:flutter_base_project/src/features/widgets/app_empty.dart';
import 'package:flutter_base_project/src/features/widgets/app_error.dart';
import 'package:flutter_base_project/src/features/widgets/app_loading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:09
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton.filledTonal(
            onPressed: () async {
              await ref.read(homeProvider.notifier).onLogout();
              ref.invalidate(checkLoginProvider);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: const _SayHiWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showMessageDialog(context);
        },
      ),
    );
  }
}

class _SayHiWidget extends StatelessWidget {
  const _SayHiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        AppStrings.sayHi,
      ),
    );
  }
}
