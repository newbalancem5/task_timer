import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SheetModal extends StatefulWidget{
  @override
  _SheetModalState createState() => _SheetModalState();
}

class _SheetModalState extends State<SheetModal> {
Duration initialtimer = new Duration();
String timerTime = "";
  // String timerTime = "";
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,              
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25)                
              )
            ),
            height: 300,           
            child: Column(                            
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                     padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
                     child: Title(
                       child: Text('Выберите время для задачи',
                    style: TextStyle(
                      fontSize: 25,
                    ),),
                    color: Colors.black,
                     ),
                  ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 30),
                    height: MediaQuery.of(context).copyWith().size.height / 10,
                    child: CupertinoTimerPicker(
                      initialTimerDuration: initialtimer,
                      mode: CupertinoTimerPickerMode.hms,
                      minuteInterval: 1,
                      secondInterval: 1,
                    onTimerDurationChanged: (Duration chanedtime){
                      setState(() {
                       initialtimer = chanedtime; 
                      });
                    } ,
                    
                ) 
                ),
                ),
                   Container(                
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.red,
                  elevation: 6.0,
                  color: Colors.red,
                  child: MaterialButton(                    
                    minWidth: 400.0,
                    height: 60.0,
                            onPressed: (){
                          Navigator.pop(context);
                  },
                  child: Text('Добавить',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  ),
                  ),
                  ),
                ),
              ), 
                ],
            ),
          );
  }
}