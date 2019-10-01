import 'package:flutter/material.dart';

class Themes { 
    static const DARK_THEME_CODE = 0;
    static const TRANSPARENT_THEME_CODE = 1;



    static final _dark = ThemeData(
      primarySwatch: MaterialColor(
        Colors.black.value,
        const <int, Color>{
           50: Colors.black,
           100: Colors.black,
           150: Colors.black,
           200: Colors.black,
           300: Colors.black,
           400: Colors.black, 
           500: Colors.black,
        },
        
      ),
      accentColor: Colors.black,
      disabledColor: Colors.transparent,
    );
  static final _transparent = ThemeData(
    canvasColor: Colors.transparent,
    accentColor: Colors.black,
      disabledColor: Colors.green

  );
    static ThemeData getTheme(int code) {
      if(code == TRANSPARENT_THEME_CODE) {
        return _dark;
      }
      return _transparent;
    }
}