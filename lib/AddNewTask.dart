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

  final key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:Text("Создание новой задачи",
      style:TextStyle(color: Colors.redAccent),),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      // leading: Icon(
      //   Icons.arrow_back,
      //   color: Colors.red,
      // ),
      ),
       body: SingleChildScrollView(
         child: Form(
           key: key,
           child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,           
           children: <Widget>[
             ListTile(
               title:TextFormField(
                 onSaved: (value) => subject = value,
               decoration: InputDecoration(
                 labelText: "Название задания"
               ),
             ),
             ),
             ListTile(title: TextFormField(
               onSaved: (value) => body = value,
                decoration: InputDecoration(
                  labelText: "Цель задания"
                ),
              ),
              ),
              ListTile(title:TextFormField(
                onSaved: (value) => to = value,
                decoration: InputDecoration(
                  labelText: "Other",
                ),
                maxLength: 8,
              ),
              ),
              ListTile(
                title: MaterialButton(
                  color: Colors.blue,                  
                  child:  Text('Добавить новую задачу',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color : Colors.white,
                    fontSize: 15,
                  )),
                  onPressed: (){
                    this.key.currentState.save();
                    Message message = Message(subject,body);
                    Navigator.pop(context , message);
                  },
                ),
              ),
           ],
           ),
       ), 
        ),
    );
  }
}