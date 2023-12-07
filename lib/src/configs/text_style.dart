import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/configs/color.dart';

/// Author: sondv
/// Created 07/12/2023 at 13:30

class AppTextStyle {
  static String fontFamily = "Arial";

  /// light w300
  static TextStyle light({double fontSize = 14, Color? color}) => TextStyle(
        color: color ?? AppColors.text,
        fontSize: fontSize,
        fontWeight: FontWeight.w300,
      );

  static TextStyle regular({double fontSize = 14, Color? color}) => TextStyle(
        color: color ?? AppColors.text,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      );

  /// medium w500
  static TextStyle medium({double fontSize = 14, Color? color}) => TextStyle(
        color: color ?? AppColors.text,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      );

  /// semiBold w600
  static TextStyle semiBold({double fontSize = 14, Color? color}) => TextStyle(
        color: color ?? AppColors.text,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      );

  /// bold w700
  static TextStyle bold({double fontSize = 14, Color? color}) => TextStyle(
        color: color ?? AppColors.text,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      );

  /// bold w800
  static TextStyle extraBold({double fontSize = 14, Color? color}) => TextStyle(
        color: color ?? AppColors.text,
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
      );

  /// bold w900
  static TextStyle black({double fontSize = 14, Color? color}) => TextStyle(
        color: color ?? AppColors.text,
        fontSize: fontSize,
        fontWeight: FontWeight.w900,
      );
}
