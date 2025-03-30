import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool _isDarkTheme = ThemeMode.system == ThemeMode.dark;
  void setThemeMode({required bool mode}) {
    _isDarkTheme = mode;
    notifyListeners();
  }

  bool getThemeValue() {
    return _isDarkTheme;
  }
}
