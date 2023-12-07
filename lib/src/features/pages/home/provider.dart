import 'package:flutter_base_project/src/core/storages/local.dart';
import 'package:flutter_base_project/src/features/pages/home/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Author: sondv
/// Created 07/12/2023 at 14:10

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState());

  Future<void> initialize() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> onLogout() async {
    await LocalStorage.setToken('');
  }
}
