import 'package:flutter/material.dart';

class img1 extends StatelessWidget {
  const img1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXfbW76BleFoMl0xgji7O76yWLBelkuLQFQg&s",fit: BoxFit.cover,)],
          
      ),
    );
  }
}

