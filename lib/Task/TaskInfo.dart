import 'package:flutter/material.dart';
// import 'package:newba/TaskList/TaskList.dart';




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
                  ))),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(
                      top: 60
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.red,
                      child: MaterialButton(
                        height: 110,
                        minWidth: 110,
                        child: Text('Начать',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 19,
                        )),
                        onPressed: (){
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          
          Container(
            padding: EdgeInsets.symmetric(vertical: 60),
            child: Material(
              borderRadius: BorderRadius.circular(50),
              child: Text('18:00',
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic
              ),),
            ),
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