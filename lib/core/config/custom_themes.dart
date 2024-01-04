import 'package:flutter/material.dart';

abstract class AppColors {
  static const primaryColor = Color(0xff075760);
  static const primaryDarkColor = Color(0xff00292e);
  static const secondaryColor = Color(0xffffba5f);
  static const backgroundColor = Color(0xffe5e5e5);
  static const secondaryColorDisabled = Color(0xff907a61);
  static const redColor = Color(0xffff5f5f);
  static const black = Color(0xff353935);
}

abstract class DefaultTheme {
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

abstract class AppTextStyle {
  static final TextStyle poppins40Black600 = TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins28Black700 = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins24Black700 = TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins20Black700 = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: 'Poppins');

  static final TextStyle poppins28White700 = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontFamily: 'Poppins');
  static final TextStyle poppins24White700 = TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontFamily: 'Poppins');
  static final TextStyle poppins20White700 = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontFamily: 'Poppins');
  static final TextStyle poppins20Black400 = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins18White500 = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Poppins');

  static final TextStyle poppins18Black500 = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins16White700 = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontFamily: 'Poppins');

  static final TextStyle poppins14White500 = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: 'Poppins');
  static final TextStyle poppins14Black500 = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins14Black700 = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins12W300 = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      fontFamily: 'Poppins');
  static final TextStyle poppins12White600 = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: 'Poppins');
  static final TextStyle poppins12Black300 = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins12Black500 = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: 'Poppins');
  static final TextStyle poppins11W500 = TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w600,
      color: AppColors.backgroundColor,
      fontFamily: 'Poppins');
  static final TextStyle poppins10Blue500 = TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w600,
      color: Colors.blueAccent,
      fontFamily: 'Poppins');
}
