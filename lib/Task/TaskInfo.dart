import 'package:flutter/material.dart';
import 'package:newba/Task/InfoContainer.dart';
import 'package:newba/Task/infoContainerBottom.dart';
// import 'package:newba/TaskList/TaskList.dart';




class TaskInfo extends StatelessWidget {
  
final String title;
final String body;
// final String to;

TaskInfo(this.title, this.body);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[TaskInfoBody(title, body), TaskInfoBottom()],
          )
      ),
    );
  }
}