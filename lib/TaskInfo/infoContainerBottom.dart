import 'package:flutter/material.dart';



class TaskInfoBottom extends StatelessWidget {
// void _timerContainer(BuildContext context) {

// }
  
  @override
  Widget build(BuildContext context) {
   return new Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: Material(
        // elevation: 19.0,
        borderRadius: BorderRadius.all(Radius.circular(200)),
        color: Colors.white,
        shadowColor: Colors.black,
        child: Container(
          width: 200,
          height: 200,
          // color: Colors.white,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 60,
              vertical: 80),
          child:
          Text('19:00',
          style: TextStyle(
            fontSize: 30
          ),),
          ),
        ),
      ),
    );
  }
} 
