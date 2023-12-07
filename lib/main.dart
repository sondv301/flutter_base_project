import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/app.dart';
import 'package:flutter_base_project/src/core/storages/local.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.initialize();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
