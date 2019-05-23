import 'package:flutter/material.dart';



class TaskInfoBottom extends StatefulWidget {
  @override
  _TaskInfoBottomState createState() => _TaskInfoBottomState();
}

class _TaskInfoBottomState extends State<TaskInfoBottom> {
  AnimationController animationController;

//  String get timerString {
//     Duration duration =
//         animationController.duration * animationController.value;
//     return '${duration.inMinutes}:${(duration.inSeconds % 60)
//         .toString()
//         .padLeft(2, '0')}';
//   }
//     @override
//   void initState() {
//     super.initState();
//     animationController =
//         AnimationController(vsync: this, duration: Duration(seconds: 5));
//   }

  @override
  Widget build(BuildContext context) {
   return new Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: Material(
        // elevation: 19.0,
        borderRadius: BorderRadius.all(Radius.circular(200)),
        color: Colors.white,
        shadowColor: Colors.black,
        child: Container(
          width: 200,
          height: 200,
          // color: Colors.white,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 60,
              vertical: 80),
          child:
          Text('19:00',
          style: TextStyle(
            fontSize: 30
          ),),
          ),
        ),
      ),
    );
  }
} 
