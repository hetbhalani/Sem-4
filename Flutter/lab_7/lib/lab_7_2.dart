import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String txt = "Hello World";
    return Scaffold(
      body: Column(
        children: [
          Text(txt, style: TextStyle(color: Colors.red, fontSize: 50),),
          customBuild()
        ],
      ),
    );
  }

  Widget customBuild(){
    String str = "Bhai bhai";
    return Text(str,style: TextStyle(fontSize: 40, color: Colors.blue),);
  }
}