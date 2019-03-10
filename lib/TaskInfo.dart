import 'package:flutter/material.dart';




class TaskInfo extends StatelessWidget {
  
final String title;
final String body;

TaskInfo(this.title, this.body);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title, 
      style: TextStyle(color: Colors.redAccent),),      
      backgroundColor: Colors.transparent,
      elevation: 0.0,),
      body:   Container(
        padding: EdgeInsets.all(16),        
      child: Text(this.body),          
    ),
    );
    
   
  }
}