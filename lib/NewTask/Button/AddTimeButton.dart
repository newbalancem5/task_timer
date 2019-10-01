import 'package:flutter/material.dart';
import 'package:newba/SheetButton/showModalBottomSheet.dart';



class AddTimeButton extends StatelessWidget {
  AddTimeButton(model);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 210),
      child:  Material(
                  borderRadius: BorderRadius.circular(10.0),
                  shadowColor: Colors.pinkAccent,
                  elevation: 2.0,
                  color: Colors.pink[50],
                  child: MaterialButton(
                    minWidth:160.0,
                    height: 50.0,
                    onPressed: (){
                         showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {      
    return Container(
      child: SheetModal(),
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