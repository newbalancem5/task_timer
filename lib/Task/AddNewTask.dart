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
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //  padding: EdgeInsets.only(top: 100),        
         child: Form(        
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
                        
                child:  Material(
                  borderRadius: BorderRadius.circular(100.0),
                  shadowColor: Colors.pinkAccent,
                  elevation: 7.0,
                  color: Colors.pink[50],
                  child: MaterialButton(
                    minWidth:160.0,
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
                        width: 1,
                      ),
                    ),
                     child: Material(                      
                      child: Container(
                        child: Chip(
                          label: Text('time'),
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
