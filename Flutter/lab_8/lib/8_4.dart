import 'package:flutter/material.dart';

class img1 extends StatelessWidget {
  const img1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/imgs/card.jpg",fit: BoxFit.fill,),
          Text("BATMAN", style: TextStyle(color: Colors.white,fontSize: 40),),
          Positioned(
              right:900,
              bottom:400,
              child:Text("mark bapa",style: TextStyle(color: Colors.black,fontSize: 40))),
          Positioned(
              left:450,
              top:350,
              child: Text("Bruce bhai",style: TextStyle(color: Colors.black,fontSize: 40))),
          Positioned(
              left:450,
              top:430,
              child: Text("3-6-9",style: TextStyle(color: Colors.black,fontSize: 40))),
          Positioned(
              left:450,
              top:500,
              child: Text("Windon sher",style: TextStyle(color: Colors.black,fontSize: 40)))
        ],
      ),
    );
  }
}

