import 'package:flutter/material.dart';
import 'package:newba/Message/Message.dart';

class AddNewTask extends StatefulWidget {
@override
_AddNewTaskState createState() => _AddNewTaskState();   
}

class _AddNewTaskState extends State<AddNewTask> {
  String to = "";
  String subject = "";
  String body = "";
  String timertime = "";
  // int _counter = 0;

  final key = GlobalKey<FormState>();
 
//  void _addTime(){
//    setState(() {
//     _counter++; 
//    });
//  }
//  void _deleteTime(){
//    setState(() {
//     _counter--; 
//    });
//  }


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
         padding: EdgeInsets.only(top: 100),        
         child: Form(        
           child: Column(            
         crossAxisAlignment: CrossAxisAlignment.center,           
           children: <Widget>[
             Padding(                
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
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                        border: InputBorder.none
                        
                      ),
                    ),
                ),   
                ),          
             Padding( 
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
               Padding( 
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
               Padding( 
               padding: EdgeInsets.only(top: 100,),
               
                child:  Material(
                  borderRadius: BorderRadius.circular(100.0),
                  shadowColor: Colors.pinkAccent,
                  elevation: 9.0,
                  color: Colors.pinkAccent,
                  child: MaterialButton(
                    minWidth:240.0,
                    height: 50.0,
                    onPressed: (){
                      _bottomSheedPressed();
                    },
                    child: Text('Добавить таймер',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 17),
                    ),
                  ),
                ),
              ),
               Padding(                
                padding: EdgeInsets.symmetric(vertical : 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(40.0),
                  shadowColor: Colors.red,
                  elevation: 6.0,
                  color: Colors.red,
                  child: MaterialButton(                    
                    minWidth: 220.0,
                    height: 50.0,
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
           ],
           ),
       ), 
        ),
    );
  }

    _bottomSheedPressed(){
      
   showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {      
    return Container(
            decoration: BoxDecoration(
              color: Colors.white,              
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45)                
              )
            ),
            height: 300,             
            child: Column(                            
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                     padding: EdgeInsets.only(left: 16, right: 16, bottom: 180),
                     child: Title(
                       child: Text('Выберите время для задачи',
                    style: TextStyle(
                      fontSize: 25,
                    ),),
                    color: Colors.black,
                     ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(40.0),
                    shadowColor: Colors.red,
                    elevation: 6.0,
                    color: Colors.red,
                  
                    child: MaterialButton(                    
                      child: Text('добавить время',
                      style:TextStyle(
                        color: Colors.white
                      ) ,),
                      onPressed: (){},
                    ),
                  )
                ],
            ),
          );
   });
}
  }
