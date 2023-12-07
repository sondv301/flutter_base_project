import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:34

final appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.nunitoSans().fontFamily,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: _appBarTheme,
  dialogTheme: _dialogTheme,
  cardTheme: _cardTheme,
  textTheme: _textTheme,
  inputDecorationTheme: _inputDecorationTheme,
);

final _appBarTheme = AppBarTheme();

const _dialogTheme = DialogTheme(
  surfaceTintColor: Colors.white,
);

final _cardTheme = CardTheme(
  elevation: 0,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
);

final _textTheme = TextTheme(
  displayLarge: AppTextStyle.regular(),
  displayMedium: AppTextStyle.regular(),
  displaySmall: AppTextStyle.regular(),
  headlineLarge: AppTextStyle.regular(),
  headlineMedium: AppTextStyle.regular(),
  headlineSmall: AppTextStyle.regular(),
  titleLarge: AppTextStyle.regular(),
  titleMedium: AppTextStyle.regular(),
  titleSmall: AppTextStyle.regular(),
  bodyLarge: AppTextStyle.regular(),
  bodyMedium: AppTextStyle.regular(),
  bodySmall: AppTextStyle.regular(),
  labelLarge: AppTextStyle.regular(),
  labelMedium: AppTextStyle.regular(),
  labelSmall: AppTextStyle.regular(),
);

final _inputDecorationTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.all(16),
  fillColor: Colors.grey.shade100,
  filled: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide.none,
  ),
);
