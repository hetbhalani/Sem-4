import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Text("ForeverFound",)
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                    print('Button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.white30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          20)), // Remove border radius for square corners
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/imgs/add.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Spacing between image and text
                      const Text(
                        'Add User',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                    print('Button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.white30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          20)), // Remove border radius for square corners
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,// Makes the image round
                        child: Image.asset(
                          'assets/imgs/UserList.png', // Example image URL
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Spacing between image and text
                      const Text(
                        'Click Me',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                    print('Button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.white30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          20)), // Remove border radius for square corners
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,// Makes the image round
                        child: Image.asset(
                          'assets/imgs/Fav.png', // Example image URL
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Spacing between image and text
                      const Text(
                        'Click Me',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                    print('Button pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.white30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          20)), // Remove border radius for square corners
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,// Makes the image round
                        child: Image.asset(
                          'assets/imgs/about-us.png', // Example image URL
                          width: 80,
                          height: 80,
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Spacing between image and text
                      const Text(
                        'Click Me',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
