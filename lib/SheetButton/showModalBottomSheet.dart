import 'package:flutter/material.dart';



class BattonAddNewTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child:  Material(
                  borderRadius: BorderRadius.circular(100.0),
                  shadowColor: Colors.pinkAccent,
                  elevation: 7.0,
                  color: Colors.pink[50],
                  child: MaterialButton(
                    minWidth:160.0,
                    height: 50.0,
                    onPressed: (){
                      showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {      
    return Container(
            decoration: BoxDecoration(
              color: Colors.white,              
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45)                
              )
            ),
            height: 300,             
            child: Column(                            
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                     padding: EdgeInsets.only(left: 16, right: 16, bottom: 180),
                     child: Title(
                       child: Text('Выберите время для задачи',
                    style: TextStyle(
                      fontSize: 25,
                    ),),
                    color: Colors.black,
                     ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(40.0),
                    shadowColor: Colors.red,
                    elevation: 6.0,
                    color: Colors.red,
                  
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
   });
                    },
                    child: Text('Добавить таймер',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 17),
                    ),
                  ),
                ),
      
    );
}
}