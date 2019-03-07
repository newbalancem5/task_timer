import 'package:flutter/material.dart';



class AddNewTask extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text("Создание новой задачи")
       ,),
       body: Center(child: Text('Тут будет новая задача'),
       ),
      
      
    );
  }
}