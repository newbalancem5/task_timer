import 'package:flutter/material.dart';
import 'dart:math' as math;


  class TaskTimer extends StatefulWidget {
    @override
    _TaskTimerState createState() => _TaskTimerState();
  }
  
  class _TaskTimerState extends State<TaskTimer> {

    _currentTime(){
    return "${DateTime.now().hour} : ${DateTime.now().minute}";
  }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TimeTasker"),),
          backgroundColor: Colors.deepOrange,
          elevation: 0.0,
        ),
        
      );
    }
  }