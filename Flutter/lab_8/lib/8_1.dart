import 'package:flutter/material.dart';

class img1 extends StatelessWidget {
  const img1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: Column(
            children: [Image.asset("assets/imgs/80af5b99ea5870beebffbac921f94f32.jpg")],
          )
      ),
    );
  }
}

