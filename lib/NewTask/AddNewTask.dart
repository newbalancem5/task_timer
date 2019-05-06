import 'package:flutter/material.dart';
import 'package:newba/Message/Message.dart';

import 'Button/AddTimeButton.dart';

class AddNewTask extends StatefulWidget {
@override
_AddNewTaskState createState() => _AddNewTaskState();   
}

class _AddNewTaskState extends State<AddNewTask> {
  String to = "";
  String subject = "";
  String body = "";
  String timertime = "";

final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,     
      appBar: AppBar(
       title:Text("Создание новой задачи",
      style:TextStyle(color: Colors.redAccent),),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.4,
      ),
       body: 
       SingleChildScrollView( 
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //  padding: EdgeInsets.only(top: 100),        
         child: Form(  
           key: key,      
           child: Column(            
         crossAxisAlignment: CrossAxisAlignment.center,           
           children: <Widget>[
             Container(                
               padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
               child: Material(
                    elevation: 11.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      onSaved: (value) => subject = value,
                      cursorColor: Colors.red,
                      decoration: 
                      InputDecoration(                        
                        labelText: 'Имя задания',
                        contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 12.0),
                        border: InputBorder.none                        
                      ),
                    ),
                ),   
                ),          
             Container( 
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    child:  Material(
                    elevation: 15.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      onSaved: (value) => body = value,
                      cursorColor: Colors.red,
                      decoration: 
                      InputDecoration(
                        labelText: 'Цель Задания',
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        border: InputBorder.none
                      ),
                    ),
                ),
             ),
               Container( 
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child:  Material(
                    elevation: 15.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      onSaved: (value) => to = value,
                      cursorColor: Colors.red,
                      decoration: 
                      InputDecoration(
                        labelText: 'Дополнение к заданию',
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        border: InputBorder.none
                      ),
                    ),
                ),),
              Wrap(
                
                children: <Widget>[
                   Container(          
                       child: AddTimeButton()
                
              ), 
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    child: Material(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.transparent,
                      child: Container(
                        child: Chip(
                          label: Icon(Icons.timer),
                          backgroundColor: Colors.transparent,
                          labelStyle: TextStyle(
                            color: Colors.red,
                          ),                          
                        ),
                      ),
                    )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                        width: 0.3,
                      ),
                    ),
                     child: Material(
                       borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Chip(
                          label: Text('Time'),
                          backgroundColor: Colors.transparent,
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 40
                          ),                          
                        ),
                      ),
                    )
                  ),
                  
                ],
              )            
           ],
           ),           
       ),
        ),
        bottomNavigationBar: Container(                
                padding: EdgeInsets.symmetric(vertical : 10.0, horizontal: 10.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.red,
                  elevation: 6.0,
                  color: Colors.red,
                  child: MaterialButton(                    
                    minWidth: 400.0,
                    height: 60.0,
                            onPressed: (){
                    this.key.currentState.save();
                    Message message = Message(subject,body);
                    Navigator.pop(context , message);
                  },
                  child: Text('Добавить задачу',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  ),
                  ),
                  ),
                ),
              ),              
    );
  }
}
