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
              Expanded(child: Container(color: Colors.green,)),
              Expanded(child: Container(color: Colors.blueAccent,)),
              Expanded(child: Container(color: Colors.deepPurple,)),
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.cyan,)),
              Expanded(child: Container(color: Colors.lime,)),
              Expanded(child: Container(color: Colors.teal,))
            ],
          ))
        ],
      ),
    );
  }

}