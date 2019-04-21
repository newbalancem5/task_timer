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
      elevation: 0.0,
      ),
       body: 
       SingleChildScrollView(         
         child: Form(        
           child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,           
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
                  labelText: "Дополнение",
                ),
                maxLength: 8,
              ),
              ),
                            ListTile(
                title: TextFormField(
                     onSaved: (value) => timertime = value,
                decoration: InputDecoration(
                  labelText: "Выберите время таймера"
                ),
                ),
              ),
              Container(
                child: Material(
                  borderRadius: BorderRadius.circular(40.0),
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
                padding: EdgeInsets.symmetric(vertical : 16.0),
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
              
              // ListTile(
              //   child: Material(
              //   child: MaterialButton(
              //     color: Colors.black,  
              //     minWidth: 400.0,
              //     height: 42.0,                
              //     child:  Text('Добавить новую задачу',
              //     textAlign: TextAlign.left,
              //     style: TextStyle(
              //       color : Colors.white,
              //       fontSize: 18,
              //     )),
          
              //   ),
              // ),
              // ),
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
              color: Colors.greenAccent,              
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40)                
              )
            ),
            height: 300, 
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('ModalBottomSheet'),
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
