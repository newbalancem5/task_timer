import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newba/AddButtonTask.dart';
import 'package:newba/Message.dart';
import 'package:newba/TaskInfo.dart';
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

Future<List<Message>> future;
List<Message> message;



Future loadTaskList() async{
  http.Response response  = 
  await http.get('http://www.mocky.io/v2/5c84e67d3300008612f2ba62');
  String content = response.body; 
  List collection = json.decode(content); 
  List <Message> _messages = collection.map((json)=>Message.fromJson(json)).toList();


  
  setState(() {
   message = _messages; 
  });
}
void initState() {
  loadTaskList();
  super.initState();
  fetch();
}
 void fetch() async {
    // future = Message.browse();
    message = await future;
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Задачи',
        style:TextStyle(color: Colors.red,
        fontFamily: "Nexa"
        ),
        ),
        // actions: <Widget>[
        //   IconButton(
        //       icon: Icon(Icons.refresh),
        //       onPressed: () async {
        //         var _messages = await Message.browse();

        //         setState(() {
        //           messages = _messages;
        //         });
        //       })
        // ],
        centerTitle :true,        
        backgroundColor: Colors.transparent, 
        elevation: 0.0,        
      ),      
      body: ListView.separated(
        // future = message,
        itemCount: message.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (BuildContext context, int index ){
          Message messages = message[index];


          var listTile = ListTile(
            title: Text(messages.subject),
            isThreeLine: true,
            leading: CircleAvatar(
              child: Text('TM'),
            ),
            subtitle: Text(
              messages.body
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => 
                    TaskInfo(messages.subject, messages.body),),);
              },
          );
          return listTile;
        }        
      ),
      
       floatingActionButton: AddButtonTask(),
    );
  }

}
