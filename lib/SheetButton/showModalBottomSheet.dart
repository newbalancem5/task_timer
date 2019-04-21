import 'package:flutter/material.dart';



class ShowModalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {      
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
                  
                  Material(
                    borderRadius: BorderRadius.circular(40.0),
                    shadowColor: Colors.blueAccent,
                    elevation: 6.0,
                    color: Colors.blue,
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
   }
}