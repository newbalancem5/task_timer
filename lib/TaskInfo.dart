import 'package:flutter/material.dart';




class TaskInfo extends StatelessWidget {
  
final String title;
final String message;

TaskInfo(this.title, this.message);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title),),
      body:   Center(
      child: Text(this.message),
      
    ),
    );
    
   
  }
}