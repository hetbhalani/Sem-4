import 'package:flutter/material.dart';

class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.red,)),
              Expanded(child: Container(color: Colors.orangeAccent,)),
              Expanded(child: Container(color: Colors.black,))

            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.green,),flex: 5,),
              Expanded(child: Container(color: Colors.blueAccent,),flex: 4,),
              Expanded(child: Container(color: Colors.deepPurple,),flex: 3,),
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.cyan,),flex: 2,),
              Expanded(child: Container(color: Colors.lime,),flex: 6,),
              Expanded(child: Container(color: Colors.teal,),flex: 4,)
            ],
          ))
        ],
      ),
    );
  }

}