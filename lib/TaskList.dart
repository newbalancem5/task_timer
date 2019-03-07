import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'NewTask.dart';
//import 'TaskTimer.dart';

void main() {
  runApp(new MaterialApp(home: new TaskList()));
}

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => new _TaskListState();
}

class _TaskListState extends State<TaskList> {


var message = const [];

Future loadMessaleList() async{
  var content = await rootBundle.loadString('data/message.json');
  var collection = json.decode(content);

  setState(() {
   message = collection; 
  });
}
 void initState(){
   super.initState();
 }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Задачи',
        style:TextStyle(color: Colors.red,
        fontFamily: "Nexa"
        ),
        ),
        centerTitle :true,        
        backgroundColor: Colors.transparent, 
        elevation: 0.0,        
      ),      
      body: ListView.separated(
        itemCount: message.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (BuildContext context, int index ){
          var messages = message[index];


          var listTile = ListTile(
            title: Text(messages['subject']),
            isThreeLine: true,
            leading: CircleAvatar(
              child: Text('TM'),
            ),
            subtitle: Text(messages['body']),

          );
          return listTile;
        }
        
      ),
      
      //  floatingActionButton: FloatingActionButton(
      //    onPressed:  _openAddEntryDialog,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.redAccent,
      // ),
      
      
      
    );
  }

}
