import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(DemoAPI());
}

class User {
  final int id;
  final String name;

  User({required this.id, required this.name});
}

class FetchAPI {
  String url = "https://67b5644da9acbdb38ed21586.mockapi.io/demo_1";

  Future<List<User>> getAllUsers() async {
    List<User> users = [];

    final response = await http.get(Uri.parse(url));
    List<dynamic> data = json.decode(response.body);
    users = data.map((item) => User(id: int.parse(item['id']), name: item['name'])).toList();
    return users;
  }
}

class DemoAPI extends StatelessWidget {
  const DemoAPI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder<List<User>>(
          future: FetchAPI().getAllUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text("No users found"));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].name),
                    subtitle: Text("ID: ${snapshot.data![index].id}"),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
