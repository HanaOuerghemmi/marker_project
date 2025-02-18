import 'package:flutter/material.dart';

import '../core.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.lightText,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.black),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.lightText),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.lightText),
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.lightText),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.lightText),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.secondColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondColor,
        foregroundColor: AppColors.primaryWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.black),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.primaryWhite,
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryColor)),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
      hintStyle: TextStyle(color: AppColors.grey),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.secondColor,
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      foregroundColor: AppColors.darkText,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.grey),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.darkText),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.darkText),
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.darkText),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.darkText),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.grey),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.grey,
      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.secondColor)),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
      hintStyle: TextStyle(color: AppColors.grey),
    ),
  );
}