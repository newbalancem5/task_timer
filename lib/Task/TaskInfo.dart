import 'package:flutter/material.dart';
import 'package:newba/TaskList/TaskList.dart';




class TaskInfo extends StatelessWidget {
  
final String title;
final String body;

TaskInfo(this.title, this.body);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      appBar: AppBar(
      centerTitle: true,
      backgroundColor: Color(0xFFf45d27),
      elevation: 0.0,),
      body:  
      Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFf45d27),
                    Color(0xFFf5851f)
                  ]
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(                    
                    alignment: Alignment.topCenter,
                    child: Text(this.title, 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ) ,),
                  ),
                  Align(child: Text(this.body,
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  )))
                ],
              ),
              
            ),
            Row(
              children: <Widget>[
                 Container(
              width: 100,
              height: 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Colors.tealAccent
              ),
              child: Text('data'),
            ),           
              ],
            )
          ],
        ),
      ),
      //  Container(   
      //   padding: EdgeInsets.all(16),        
      // child:
      // Text(this.body,
      // textAlign: TextAlign.center,
      // style: TextStyle(color: Colors.black,
      // fontSize: 30,),
      // ),
      //     ),
    backgroundColor: Colors.white,
     );
    
   
  }
}