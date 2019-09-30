import 'package:flutter/material.dart';
import 'package:newba/NewTask/AddNewTask.dart';
import 'package:newba/Message/Message.dart';

class AddButtonTask extends StatelessWidget {
 final   List<Message> message;
   AddButtonTask(this.message);


  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(  
         child: Icon(Icons.add),
        onPressed: () async {
          Message messages = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => AddNewTask(),              
            ),
          );
          
          if (message != null) {
          message.add(messages);
          
            Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Ваш таймер был добавленно!"),
              backgroundColor: Colors.green,
              ),
            );
          }
        },     
        tooltip: 'Increment',
        backgroundColor: Colors.red[300],      
    );

  }
}