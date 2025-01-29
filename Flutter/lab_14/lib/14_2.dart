import 'package:flutter/material.dart';

class demo_14_2 extends StatefulWidget {
  const demo_14_2({super.key});

  @override
  State<demo_14_2> createState() => _demo_14_1State();
}

class _demo_14_1State extends State<demo_14_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("biju Page"),),
      body: ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('/');
      }, child: Text("mne dabooo...")),
    );
  }
}
