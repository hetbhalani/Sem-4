import 'package:flutter/material.dart';
import 'package:lab_9/Page1.dart';
import 'package:lab_9/home.dart';

class HeaderTabs extends StatelessWidget {
  const HeaderTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Home"),
              Tab(text: "Page1"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabViewDemo(), // Replace this with the actual widget for "Home".
            Page1(),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Container(
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: const Text("Home"),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Page1(),
                  ));
                },
              ),
              ListTile(
                title: const Text("LogOut"),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Page1(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
