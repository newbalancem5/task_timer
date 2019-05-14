import 'package:flutter/material.dart';



class TaskInfoBottom extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
   return new Container(
      height: 300.0,
    padding: EdgeInsets.all(50),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              
              ),
              child:
               Text('data',
              style: TextStyle(
              color: Colors.black,
              fontSize: 30)
              
              ),
          //  color: Colors.white,
                     
          ),
          
        ],
      ),
    );
  }
} 
