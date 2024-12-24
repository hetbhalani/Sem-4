import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputExample(),
    );
  }
}

class InputExample extends StatefulWidget {
  @override
  InputExampleState createState() => InputExampleState();
}

class InputExampleState extends State<InputExample> {
  // Initialize a TextEditingController
  TextEditingController _controller = TextEditingController();

  void _printInputValue() {
    print('Input Value: ${_controller.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter some text',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _printInputValue,
              child: Text('Print Input'),
            ),
          ],
        ),
      ),
    );
  }
}