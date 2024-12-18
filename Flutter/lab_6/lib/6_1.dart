import 'package:flutter/material.dart';

class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    home: Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.green,)),
          Expanded(child: Container(color: Colors.blue,))
        ],
      ),
    )
  );
  }

}