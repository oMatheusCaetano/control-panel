import 'package:flutter/material.dart';

ThemeData handleTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: Color.fromARGB(255, 145, 30, 223),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
      minimumSize: MaterialStateProperty.all(Size.fromHeight(50)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    )),
  );
}
