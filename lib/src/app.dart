import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/app.dart';
import 'package:flutter_base_project/src/configs/theme.dart';
import 'package:flutter_base_project/src/core/storages/provider.dart';
import 'package:flutter_base_project/src/features/pages/home/view.dart';
import 'package:flutter_base_project/src/features/pages/login/view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Author: sondv
/// Created 07/12/2023 at 11:46

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkLogin = ref.watch(checkLoginProvider);
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: checkLogin ? const HomePage() : const LoginPage(),
    );
  }
}
