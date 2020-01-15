import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newba/TaskList/TaskList.dart';
import 'package:newba/Theme/ThemeApp.dart';
import 'package:provider/provider.dart';
// import 'NewTask.dart';
//import 'TaskTimer.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  
  _ApplicationState createState() => new _ApplicationState();
  }

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext model) {
    
    return ChangeNotifierProvider<AppThemeChanger>(
      builder: (_) => AppThemeChanger(ThemeData.dark()),
          child: new MaterialAppWithTheme(),
    );
  }
//   void _openAddEntryDialog() {
//   Navigator.of(context).push(new MaterialPageRoute<Null>(
//       builder: (BuildContext context) {
//         return new AddEntryDialog();
//       },
//     fullscreenDialog: true
//   

}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppThemeChanger>(context);
    return MaterialApp(
        theme: theme.getTheme( ),
        title: 'Задачи',
        home: TaskList(),
      );
  }
}