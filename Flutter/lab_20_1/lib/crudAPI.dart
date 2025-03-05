import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class CrudApi extends StatefulWidget {
  @override
  State<CrudApi> createState() => _CrudApiState();
}

class _CrudApiState extends State<CrudApi> {
  List<Map<String, dynamic>> userDataList = []; // Initialize with an empty list
  String userInput = "";
  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CRUD API")),
      body: userDataList.isEmpty
          ? Center(child: CircularProgressIndicator()) // Show loader until data is fetched
          : ListView.builder(
        itemCount: userDataList.length,
        itemBuilder: (context, index) {
          var user = userDataList[index];
          return ListTile(
            title: Text(user['unique'] ?? 'No Name'), // Handle potential null values
            subtitle: Text("ID: ${user['id'] ?? 'N/A'}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () async {
                    await _showInputDialog();
                    _updateUser(user['id'], {"unique": userInput});
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    _deleteUser(user['id']);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addUser({"unique": "New User"});
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _addUser(Map<String, dynamic> newUser) async {
    final String apiUrl = "https://66f274a771c84d80587551d2.mockapi.io/movie";
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: json.encode(newUser),
      );

      if (response.statusCode == 201) {
        print("User added successfully!");
        _loadUserData(); // Refresh list
      } else {
        print("Failed to add user: ${response.statusCode}");
      }
    } catch (error) {
      print("Error adding user: $error");
    }
  }

  Future<void> _updateUser(String userId, Map<String, dynamic> updatedData) async {
    final String apiUrl = "https://66f274a771c84d80587551d2.mockapi.io/movie/$userId";

    try {
      final response = await http.put(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: json.encode(updatedData),
      );

      if (response.statusCode == 200) {
        print("User updated successfully!");
        _loadUserData();
      } else {
        print("Failed to update user: ${response.statusCode}");
      }
    } catch (error) {
      print("Error updating user: $error");
    }
  }

  Future<void> _deleteUser(String userId) async {
    final String apiUrl = "https://66f274a771c84d80587551d2.mockapi.io/movie/$userId";

    try {
      final response = await http.delete(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        print("User deleted successfully!");
        _loadUserData();
      } else {
        print("Failed to delete user: ${response.statusCode}");
      }
    } catch (error) {
      print("Error deleting user: $error");
    }
  }

  Future<void> _loadUserData() async {
    final String apiUrl = "https://66f274a771c84d80587551d2.mockapi.io/movie";
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        List<Map<String, dynamic>> users = List<Map<String, dynamic>>.from(
          json.decode(response.body),
        );
        if (mounted) {
          setState(() {
            userDataList = users;
          });
        }
      } else {
        print("Failed to load users: ${response.statusCode}");
      }
    } catch (error) {
      print("Error fetching users: $error");
    }
  }


  Future<void> _showInputDialog() async {
    TextEditingController textController = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter your input"),
          content: TextField(
            controller: textController,
            decoration: InputDecoration(hintText: "Type something..."),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close popup
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  userInput = textController.text; // Save input
                });
                Navigator.of(context).pop(); // Close popup
              },
              child: Text("Submit"),
            ),
          ],
        );
      },
    );
  }

}