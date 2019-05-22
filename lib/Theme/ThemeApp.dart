import 'package:flutter/material.dart';


class AppThemeChanger with ChangeNotifier{
  ThemeData _themeData;

  AppThemeChanger(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;

    notifyListeners();
  }
}