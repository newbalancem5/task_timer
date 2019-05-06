import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SheetModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
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
                     padding: EdgeInsets.only(left: 16, right: 16, bottom: 120),
                     child: Title(
                       child: Text('Выберите время для задачи',
                    style: TextStyle(
                      fontSize: 25,
                    ),),
                    color: Colors.black,
                     ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: (){},
                          child: Icon(FontAwesomeIcons.minus, 
                          color: Colors.red,
                          size: 30,),
                          shape: CircleBorder(),
                          fillColor: Colors.blueAccent,
                          padding: const EdgeInsets.all(10.0),
                        ),
                        Text(
                          '\u0024 50',
                          style: TextStyle(fontSize: 34,
                          color: Colors.black),
                        ),
                         RawMaterialButton(
                          onPressed: (){},
                          child: Icon(FontAwesomeIcons.plus, 
                          color: Colors.red,
                          size: 30,),
                          shape: CircleBorder(),
                          fillColor: Colors.blueAccent,
                          padding: const EdgeInsets.all(10.0),
                        ),
                      ],
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
  }
}