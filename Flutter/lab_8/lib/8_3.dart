import 'package:flutter/material.dart';

class img1 extends StatelessWidget {
  const img1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/imgs/80af5b99ea5870beebffbac921f94f32.jpg",fit: BoxFit.fill,),
          Text("BATMAN", style: TextStyle(color: Colors.white,fontSize: 40),),
          Positioned(
              right:0,
              bottom:0,
              child:Text("Curious Bat",style: TextStyle(color: Colors.white,fontSize: 40)))
        ],
      ),
    );
  }
}

