import 'package:flutter/material.dart';
import 'package:lab_9/Page1.dart';

class TabViewDemo extends StatelessWidget {
  const TabViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page", style: TextStyle(fontSize: 20,color: Colors.black),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1()));
            }, child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
