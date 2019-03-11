import 'package:flutter/material.dart';
import 'package:newba/Message.dart';

class AddNewTask extends StatefulWidget {
@override
_AddNewTaskState createState() => _AddNewTaskState();   
}

class _AddNewTaskState extends State<AddNewTask> {
  String to = "";
  String subject = "";
  String body = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text("Создание новой задачи",
      style:TextStyle(color: Colors.redAccent),),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,),

       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,           
           children: <Widget>[
             ListTile(
               title:TextField(
                 onChanged: (value){
                   body = value;
                 },
               decoration: InputDecoration(
                 labelText: "Название задания"
               ),
             ),
             ),
             ListTile(title: TextField(
               onChanged: (value){
                 subject = value;
               },
                decoration: InputDecoration(
                  labelText: "Цель задания"
                ),
              ),
              ),
              ListTile(title:TextField(
                onChanged: (value){
                  to = value;
                },
                decoration: InputDecoration(
                  labelText: "BODY",
                ),
                maxLength: 8,
              ),
              ),
              ListTile(
                title: RaisedButton(
                  child: Text('Добавить новую задачу'),
                  onPressed: (){
                    Message message = Message(subject,body);
                    Navigator.pop(context , message);
                  },
                ),
              ),
           ],
       ), 
        
    );
  }
}