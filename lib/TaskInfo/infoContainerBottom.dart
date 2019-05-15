import 'package:flutter/material.dart';



class TaskInfoBottom extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
   return new Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: Material(
        elevation: 19.0,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.white,
        shadowColor: Colors.black,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.white,
          child: 
          Text('data',
          style: TextStyle(
            fontSize: 30
          ),),
          
        ),
      ),
    );
  }
} 
