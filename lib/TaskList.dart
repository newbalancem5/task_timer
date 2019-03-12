import 'package:flutter/material.dart';
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

Future<List<Message>> message;
// List<Message> message;

bool isLoading =true;

void initState() {
  // loadTaskList();
  super.initState();
  // fetch();
  message =Message.browse();
}
//  void fetch() async {
//     future = Message.browse();
//     message = await future;
//   }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Задачи',
        style:TextStyle(color: Colors.red,
        fontFamily: "Nexa"
        ),
        ),

        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
          onPressed: (){
            var _message =Message.browse();

            setState(() {
             message = _message; 
            });
          },)
        ],
        centerTitle :true,        
        backgroundColor: Colors.transparent, 
        elevation: 0.0,        
      ),      
      body: FutureBuilder(
        future: message,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(child:  CircularProgressIndicator());
            case ConnectionState.done:
            if(snapshot.hasError) return Text("Ой что-то пошло не так");
            var message =snapshot.data;
            return ListView.separated(
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
            },);
        }
        }),
          floatingActionButton: AddButtonTask(),
          );

      
        // floatingActionButton: ComposeButton(messages)
      // FloatingActionButton( onPressed: (){},);
  }
  }
