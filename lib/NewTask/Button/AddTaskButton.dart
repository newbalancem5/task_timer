import 'package:flutter/material.dart';
import 'package:newba/Message/Message.dart';



class AddNewTaskTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  String subject = "";
  String body = "";


    return Container(
       child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.red,
                  elevation: 6.0,
                  color: Colors.red,
                  child: MaterialButton(                    
                    minWidth: 400.0,
                    height: 60.0,
                            onPressed: (){
                    // this.key.currentState.save();
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
    );
  }
}