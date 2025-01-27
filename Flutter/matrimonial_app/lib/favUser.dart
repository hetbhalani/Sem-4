import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:matrimonial_app/user.dart';
import 'package:matrimonial_app/userList.dart';
import 'package:matrimonial_app/home.dart';



class FavUsers extends StatefulWidget {
  const FavUsers({super.key});

  @override
  State<FavUsers> createState() => _FavUsersState();
}

class _FavUsersState extends State<FavUsers> {
  int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            //   child: TextFormField(
            //     controller: search,
            //     decoration: InputDecoration(
            //         labelText: "Search",
            //         prefixIcon: Icon(Icons.search),
            //         border: OutlineInputBorder(
            //             borderRadius: BorderRadius.all(Radius.circular(15)))),
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  // Remove Expanded and directly use ListView.builder
                  ListView.builder(
                    itemCount: FavUser.length,
                    shrinkWrap: true, // Add this to limit ListView height
                    physics:
                    NeverScrollableScrollPhysics(), // Disable ListView scrolling
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        child: ListTile(
                          title: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        users[index]['gender']? 'assets/imgs/male.png' : 'assets/imgs/female.png',
                                        height: 40,
                                        width: 40,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "${users[index]['name']}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      // Spacer(),
                                      // Icon(Icons.favorite_border_rounded),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(50, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "City:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(users[index]['city']),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(50, 5, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Phone:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(users[index]['phone']),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(50, 5, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Email:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(users[index]['email']),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(50, 5, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Gender:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),

                                        Text(users[index]['gender']? 'Male': 'Female'),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: users[index]['isFav'] ? Icon(Icons.favorite_rounded,color: Colors.pinkAccent,) : Icon(Icons.favorite_border_rounded) ,
                                    iconSize: 25,
                                    onPressed: () {
                                      if(!users[index]['isFav']){
                                        FavUser.add(users[index]);
                                      }
                                      else{
                                        FavUser.removeAt(index);
                                      }
                                      print(FavUser);
                                      print("Fav btn pressed");
                                      setState(() {

                                        users[index]['isFav'] = !users[index]['isFav'];
                                      });
                                    },
                                  ),
                                  SizedBox(height: 55),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    iconSize: 25,
                                    color: Colors.blueAccent,
                                    onPressed: () {
                                      // Handle edit button press
                                      print("Edit button pressed");
                                    },
                                  ),
                                  // SizedBox(height: 5),
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    iconSize: 25,
                                    color: Colors.red,
                                    onPressed: () {
                                      print("Delete button pressed");
                                      setState(() {
                                        users.removeAt(index);
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          // subtitle: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Text(users[index]['email']),
                          //     Text(users[index]['phone']),
                          //     // Text(users[index]['dob']),
                          //   ],
                          // ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                GButton(
                  icon: Icons.add_box_outlined,
                  text: 'Add User',
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => CrudUser()));
                  },
                ),
                GButton(
                  icon: Icons.list_alt_rounded,
                  text: 'User List',
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Userlist()));
                  },
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                  onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => FavUsers()));
                  },
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
