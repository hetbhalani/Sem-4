import 'package:flutter/material.dart';

class Scrolldemo extends StatefulWidget {
  const Scrolldemo({super.key});

  @override
  State<Scrolldemo> createState() => _ScrolldemoState();
}

class _ScrolldemoState extends State<Scrolldemo> {
  var ls = ["het","bhai","jor","dar","het","bhai","jor","dar","het","bhai","jor","dar"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,decoration: BoxDecoration(color: Colors.red),
              child: Row(
                
                children: [
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        childAspectRatio: 6
                      ),
                      itemCount: ls.length,
                      itemBuilder: (context,index){
                            return Text(ls[index],style: TextStyle(fontSize: 20),);
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,decoration: BoxDecoration(color: Colors.green),
              child: Row(
                children: [
                  Expanded(
                child: ListView.builder(
                  itemCount: ls.length,
                    itemBuilder: (context,index){
                    return Text(ls[index],style: TextStyle(fontSize: 20),);
                    }
                ),)
                ],
              ),
            ),
            Container(height: 200,decoration: BoxDecoration(color: Colors.yellow),),
            Container(height: 100,decoration: BoxDecoration(color: Colors.purple),),
            Container(height: 200,decoration: BoxDecoration(color: Colors.pinkAccent),),
            Container(height: 150,decoration: BoxDecoration(color: Colors.brown),),

          ],
        ),
      )
    );
  }
}
