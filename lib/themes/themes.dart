import 'package:flutter/material.dart';
import 'package:app_lista_compras_estilizado/themes/app_colors.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      color: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    extensions: const [
      AppColors(
        primaryColor: Colors.orange,
        textButtonColor: Colors.white,
        inputTextColor: Colors.black,
        inputBackgroundColor: Colors.white,
        createButtonBackgroundColor: Colors.green,
        createButtonTextColor: Colors.white,
        dividerColor: Colors.white38,
        itemTextColor: Colors.white,
        itemBoughtColor: Colors.grey,
        floatingButtonColor: Colors.green,
        pageBackgroundColor: Color(0xFF121212),
        modalBackgroundColor: const Color(0xFF2B2B2B),
        modalTextColor: Colors.white,
        modalHintColor: Colors.white70,
        closeIconColor: Colors.white,
        cardTitleColor: Colors.white,
        progressColor: Colors.white,
        progressBackgroundColor: Colors.white24,
        counterColor: Colors.white,
      ),
    ],
  );
}

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),

    extensions: const [
      AppColors(
        primaryColor: Colors.green,
        textButtonColor: Colors.white,
        inputTextColor: Colors.black,
        inputBackgroundColor: Colors.white,
        createButtonBackgroundColor: Colors.white,
        createButtonTextColor: Colors.green,
        dividerColor: Colors.black38,
        itemTextColor: Colors.black,
        itemBoughtColor: Colors.grey,
        floatingButtonColor: Colors.green,
        pageBackgroundColor: Colors.green,
        modalBackgroundColor: Colors.white,
        modalTextColor: Colors.black,
        modalHintColor: Colors.black54,
        closeIconColor: Colors.black,
        cardTitleColor: Colors.black,
        progressColor: Colors.green,
        progressBackgroundColor: Colors.grey,
        counterColor: Colors.green,
      ),
    ],
  );
}
