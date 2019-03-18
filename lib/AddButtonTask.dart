import 'package:flutter/material.dart';
import 'package:newba/AddNewTask.dart';
import 'package:newba/Message.dart';

class AddButtonTask extends StatelessWidget {
  AddButtonTask(List<Message> message);

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(  
         child: Icon(Icons.add),
        onPressed: () async {
          Message message = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => AddNewTask(),              
            ),
          );
          if (message != null){
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Оно отправленно"),
                backgroundColor: Colors.green,
              ),
            );
          }
        },     
        tooltip: 'Increment',
        backgroundColor: Colors.redAccent,      
    );

  }
}