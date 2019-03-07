import 'package:flutter/material.dart';
import 'TaskList.dart';
import 'package:newba/TaskList.dart';
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
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Задачи',
      home: TaskList(),
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
