import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String f1 = DateFormat("dd/MMM/yyyy").format(date);

    return Scaffold(
      body:Column(
        children: [
          Text(
            f1.toString(),
            style: TextStyle(fontSize: 100),
          ),
          ElevatedButton(
              onPressed: () async {
                DateTime? d = await showDatePicker(
                    context: context,
                    initialDate:  date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2026));

                if(d != null && d != date){
                  setState(() {
                    date = d;
                  });
                }
              },
              child: Text("Batav"))
        ],
      )
    );
  }
}
