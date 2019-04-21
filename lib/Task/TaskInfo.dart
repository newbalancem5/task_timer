import 'package:flutter/material.dart';




class TaskInfo extends StatelessWidget {
  
final String title;
final String body;

TaskInfo(this.title, this.body);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title,
      style: TextStyle(color: Colors.redAccent,),),
      centerTitle: true,      
      backgroundColor: Colors.transparent,
      elevation: 0.2,),
      body:   Container(   
        padding: EdgeInsets.all(16),        
      child:
      Text(this.body,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black,
      fontSize: 20,),
      ),
          ),
    backgroundColor: Colors.white,
     );
    
   
  }
}