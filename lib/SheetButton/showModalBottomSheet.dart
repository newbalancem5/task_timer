import 'package:flutter/material.dart';
import 'package:newba/Timer/TimerCount.dart';
import 'package:flutter/cupertino.dart';


TimerCountModel temerCountModel = TimerCountModel();
class SheetModal extends StatelessWidget {
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
                     padding: EdgeInsets.only(left: 16, right: 16, bottom: 30),
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
                      mode: CupertinoTimerPickerMode.hms,
                      minuteInterval: 1,
                      secondInterval: 1,
                    onTimerDurationChanged: (Duration chanedtime){
                        
                    } ,
                ) 
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
                      onPressed: (){
                        // model.increment();
                      },
                    ),
                  )
                ],
            ),
          );
  }
}