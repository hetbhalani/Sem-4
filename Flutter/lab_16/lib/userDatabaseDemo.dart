import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBdemo extends StatefulWidget {
  const DBdemo({super.key});

  @override
  State<DBdemo> createState() => _DBdemoState();
}

class _DBdemoState extends State<DBdemo> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  List<Map<String, dynamic>> users = [];

  Future<Database> initDatabase() async {
    Database db1 = await openDatabase(
        join(await getDatabasesPath(), 'users.db'),
        version: 1, onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE USER(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,age INTEGER)",
      );
    });
    return db1;
  }

  Future<void> addUser(String name, int age) async {
    Database db1 = await initDatabase();

    db1.insert('USER', {'name': name, 'age': age});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
            users[index]['name'],
          ),);
        }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Add User"),
            content: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "name"),
                  controller: name,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "age"),
                  controller: age,
                ),
              ],
            ),
            actions: [ElevatedButton(onPressed: (){
              addUser(name.text, int.parse(age.text));
              Navigator.of(context).pop();
            }, child: Text("Add"))],
          );
        });
      }),
    );
  }
}
