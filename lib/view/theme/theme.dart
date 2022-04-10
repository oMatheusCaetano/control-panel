import 'package:flutter/material.dart';

ThemeData handleTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    dividerColor: Color(0xFFE9EBEF),
    backgroundColor: Color(0xFFE9EBEF),
    textTheme: TextTheme(
      headline5: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
        color: Color(0xFF404040),
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Color(0xFF6C63FF),
      secondary: Colors.grey,
      onBackground: Color(0xFF6C63FF),
      background: Color(0xFFE9EBEF),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(Size.fromHeight(52)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    )),
  );
}
