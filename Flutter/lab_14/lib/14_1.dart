import 'package:flutter/material.dart';
import 'package:lab_14/14_2.dart';

class demo_14_1 extends StatefulWidget {
  const demo_14_1({super.key});

  @override
  State<demo_14_1> createState() => _demo_14_1State();
}

class _demo_14_1State extends State<demo_14_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pehlu Page"),),
      body: ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, '/sp');
      }, child: Text("mne dabooo...")),
    );
  }
}
