import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.orangeAccent,
  Colors.greenAccent,
  Colors.blue,
  Colors.deepPurple,
  Colors.pinkAccent,
  Colors.amber,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
  Colors.lime,
  Colors.brown,
  Colors.grey,
  Colors.redAccent,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: false),
      );

  // * Copia del objeto actual para no mutar el original
  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );
}
