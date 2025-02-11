import 'package:flutter/material.dart';
import 'user.dart';

class my_form extends StatefulWidget {
  const my_form({super.key});

  @override
  State<my_form> createState() => _my_formState();
}

class _my_formState extends State<my_form> {
  User user = User();

  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController prio = TextEditingController();
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
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
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: prio,
                  decoration: InputDecoration(
                    labelText: "Priority",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter prio";
                    }
                    if (!RegExp(r'\d').hasMatch(value)) {
                      return "Please Enter Valid prio";
                    }
                    return null;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        user.addUser(
                            userName: userName.text,
                            email: email.text,
                            prio: prio.text);
                        users.add({
                          'username': userName.text,
                          'email': email.text,
                          'prio': prio.text
                        });
                        userName.clear();
                        email.clear();
                        prio.clear();
                      });

                      // print(user.readUser());
                    },
                    child: Text("Add"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      users.sort((a,b) => a['prio'].compareTo(b['prio']));
                    });
                  },
                    child: Text("sort"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  )
                ],
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: users[index]['prio'] == '1' ? Colors.greenAccent : (users[index]['prio'] == '2'
                          ? Colors.yellow : Colors.redAccent),
                        elevation: 5,
                          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(15),
                            title: Text(
                              users[index]['username'],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  color: Colors.blue,
                                  onPressed: () {
                                    setState(() {
                                      userName.text = users[index]['username'];
                                      email.text = users[index]['email'];
                                      prio.text = users[index]['prio'];
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  color: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      users.removeAt(index);
                                    });
                                  },
                                ),
                              ],
                            ),
                          ));
                    },
                  ))
            ],
          )),
    );
  }
}
