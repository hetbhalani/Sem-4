import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Page 1",style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Back"))
        ],
      )),
    );
  }
}
