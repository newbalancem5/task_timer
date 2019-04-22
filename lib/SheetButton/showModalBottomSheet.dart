// import 'package:flutter/material.dart';


// class ButtonTimer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Material(
//                   borderRadius: BorderRadius.circular(40.0),
//                   shadowColor: Colors.pinkAccent,
//                   elevation: 9.0,
//                   color: Colors.pinkAccent,
//                   child: MaterialButton(
//                     minWidth:240.0,
//                     height: 50.0,
//                     onPressed: (){
//                       _bottomSheedPressed();
//                     },
//                     child: Text('Добавить таймер',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 17),
//                     ),
//                   ),
//                 ),      
//     );
//   }
//     _bottomSheedPressed(){
      
//    showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {      
//     return Container(
//             decoration: BoxDecoration(
//               color: Colors.greenAccent,              
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(40)                
//               )
//             ),
//             height: 300, 
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
                  
//                   Container(
//                     child: Container(
//                       child: IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: (){
//                           _addTime();
//                         },
//                       ),                      
//                     ),
//                    ),
//                    Container(
//                      child: Text('Количество $_counter минут'),

//                    ),
//                    Container(child: IconButton(
//                    icon: Icon(Icons.minimize),
//                    onPressed: (){
//                      _deleteTime();
//                    },)),
//                   Material(
//                     borderRadius: BorderRadius.circular(40.0),
//                     shadowColor: Colors.red,
//                     elevation: 6.0,
//                     color: Colors.red,
                  
//                     child: MaterialButton(                    
//                       child: Text('добавить время',
//                       style:TextStyle(
//                         color: Colors.white
//                       ) ,),
//                       onPressed: (){},
//                     ),
//                   )
//                 ],
//             ),
//           );
//    });
// }
// }