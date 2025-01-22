import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datedemo extends StatefulWidget {
  const Datedemo({super.key});

  @override
  State<Datedemo> createState() => _DatedemoState();
}

class _DatedemoState extends State<Datedemo> {
var d1 = DateFormat("dd/MM/yyyy").format(DateTime.now());
var d2 = DateFormat("dd-MM-yyyy").format(DateTime.now());
var d3 = DateFormat("dd-MMM-yyyy").format(DateTime.now());
var d4 = DateFormat("dd/MM/yyyy").format(DateTime.now());
var d5 = DateFormat("dd-MM-yy").format(DateTime.now());
var d6 = DateFormat("dd MMM, yyyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Date"),) ,
      body: Column(
        children: [
          Text("$d1\n$d2\n$d3\n$d4\n$d5\n$d6\n"),
        ],
      ),
    );
  }
}
