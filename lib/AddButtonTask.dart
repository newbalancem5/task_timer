import 'package:flutter/material.dart';
import 'package:newba/AddNewTask.dart';

class AddButtonTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(  
         child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => AddNewTask()));
        },       
        tooltip: 'Increment',
        backgroundColor: Colors.redAccent,      
    );   
  }
}