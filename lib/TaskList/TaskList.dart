import 'package:flutter/material.dart';
import 'package:newba/Task/AddButtonTask.dart';
import 'package:newba/Message/Message.dart';
import 'package:newba/Task/TaskInfo.dart';
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

bool isLoading =true;

void initState() {
  // loadTaskList();
  super.initState();
  fetch();
}
 void fetch() async {
    future = Message.browse();
    message = await future;
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text('Задачи',
        style:TextStyle(color: Colors.red,
        fontFamily: "Nexa"
        ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh,),          
          onPressed: () async {
            var _message = await Message.browse();
            setState(() {
             message = _message; 
            });
          },
          color: Colors.black, )
        ],
        centerTitle :true,        
        backgroundColor: Colors.transparent, 
        elevation: 0.0,        
      ),      
      body:
      
       FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(child:  CircularProgressIndicator());
            case ConnectionState.done:
            if(snapshot.hasError) return 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child:
                  Image.asset('lib/img/duck.png'),                  
                ),
                Container(
                  child: Text('Упс......'),
                )
              ],
            );
            var message =snapshot.data;
            return ListView.separated(
              padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
        // future = message,
        itemCount: message.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (BuildContext context, int index ){
          Message messages = message[index];
          return Container(
            padding: EdgeInsets.only(top: 10,),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3.0,
              ),
              color: Colors.cyan[100],
              borderRadius: BorderRadius.circular(30)

            ),
            child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.black))),
          child: Icon(Icons.autorenew, color: Colors.pink),
        ),
        title: Text(
          messages.subject,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            Icon(Icons.linear_scale, color: Colors.yellowAccent),
            Text(messages.body, style: TextStyle(color: Colors.black))
          ],
        ),
         onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => 
                    TaskInfo(messages.subject, messages.body),),);
              },
        trailing:
Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0)),
          );        
        //  ListTile(   
        //     contentPadding: EdgeInsets.symmetric(
        //       horizontal: 10.0,
        //       vertical: 1.0,              
        //     ),   
        //     title: Text(messages.subject),
        //     isThreeLine: true,            
        //     leading: CircleAvatar(
        //       child: Text('AM',
        //       style: TextStyle(
        //         color: Colors.white
        //       ),),
        //       backgroundColor: Colors.pinkAccent,
        //     ),
        //     subtitle: Text(
        //       messages.body,
        //       style: TextStyle(
        //         color: Colors.black,
        //       ),
        //       ),
        //       onTap: (){
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (BuildContext context) => 
        //             TaskInfo(messages.subject, messages.body),),);
        //       },
        //   );
        //   return listTile;
            },);
          }
        }),
          floatingActionButton: AddButtonTask(message),
          );
  }
  }
