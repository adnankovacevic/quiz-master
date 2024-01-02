import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff075760);
  static const primaryDarkColor = Color(0xff00292e);
  static const secondaryColor = Color(0xffffba5f);
  static const backgroundColor = Color(0xffe5e5e5);
  static const secondaryColorDisabled = Color(0xff907a61);
  static const redColor = Color(0xffff5f5f);
}

class DefaultTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: AppColors.primaryColor,
    primaryColorLight: AppColors.primaryColor,
    primaryColorDark: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      titleTextStyle: TextStyle(
          color: AppColors.primaryDarkColor,
          fontWeight: FontWeight.w400,
          fontSize: 18),
      iconTheme: IconThemeData(color: AppColors.primaryDarkColor),
    ),
    colorScheme:
        ThemeData().colorScheme.copyWith(secondary: AppColors.secondaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 24.0),
        foregroundColor: Colors.black,
        backgroundColor: AppColors.secondaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
      ),
    ),
    fontFamily: 'DMSans',
    scaffoldBackgroundColor: AppColors.backgroundColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
      unselectedItemColor: Colors.white,
      selectedItemColor: AppColors.secondaryColor,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      margin: const EdgeInsets.only(bottom: 15),
    ),
  );
}
