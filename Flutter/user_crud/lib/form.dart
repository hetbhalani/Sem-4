import 'package:flutter/material.dart';

class my_form extends StatefulWidget {
  const my_form({super.key});

  @override
  State<my_form> createState() => _my_formState();
}

class _my_formState extends State<my_form> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> FormKey = GlobalKey();
  List<Map<String, dynamic>> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
            "User Form",
            style: TextStyle(fontSize: 30.0),
          )),
          backgroundColor: Colors.blue),
      body: Form(
          key: FormKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: userName,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter User Name";
                    }
                    if (!RegExp(r'\w').hasMatch(value)) {
                      return "Please Enter Valid User Name";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Email";
                    }
                    if (!RegExp(
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                        .hasMatch(value)) {
                      return "Please Enter Valid Email";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Password";
                    }
                    if (!RegExp(r'\d').hasMatch(value)) {
                      return "Please Enter Valid Password";
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Add"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.blue,
                        foregroundColor: Colors.white,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
