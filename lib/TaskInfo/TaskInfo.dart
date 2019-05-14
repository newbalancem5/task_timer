import 'package:flutter/material.dart';
import 'package:newba/TaskInfo/InfoContainerTop.dart';
import 'package:newba/TaskInfo/infoContainerBottom.dart';
// import 'package:newba/TaskList/TaskList.dart';




class TaskInfo extends StatelessWidget {
  
final String title;
final String body;
// final String to;

TaskInfo(this.title, this.body);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(      
          child: Column(            
            children: <Widget>[TaskInfoBody(title, body), TaskInfoBottom()],
          )
      ),
    );
  }
}