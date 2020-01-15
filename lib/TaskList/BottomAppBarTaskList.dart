import 'package:flutter/material.dart';
import 'package:newba/Theme/ThemeApp.dart';
import 'package:provider/provider.dart';



class BottomBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    AppThemeChanger _themeChanger = Provider.of<AppThemeChanger>(context);
    return Container(
      child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             mainAxisSize: MainAxisSize.max,
             children: <Widget>[
               IconButton(
                 icon: Icon(Icons.brightness_2),
                 onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
                 color: Colors.black45,
               ),
               IconButton(
                 icon: Icon(Icons.brightness_5),
                 color: Colors.yellow,
                 onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
               )
             ],
           ),
    );
  }
}