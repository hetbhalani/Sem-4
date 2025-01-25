import 'package:flutter/material.dart';
import 'package:matrimonial_app/home.dart';
import 'package:matrimonial_app/user.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:line_icons/line_icons.dart';



class Userlist extends StatefulWidget {
  const Userlist({super.key});

  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  TextEditingController search = TextEditingController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/imgs/logo.png',
              height: 70,
              fit: BoxFit.contain,
            ),
            const Text(
              "JanmoKeSathi.com",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(255, 48, 48, 0.8),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,20,20,0),
              child: TextFormField(
                controller: search,
                decoration: InputDecoration(
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  )
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),

              child: Column(
                children: [
                  // Remove Expanded and directly use ListView.builder
                  ListView.builder(
                    itemCount: users.length,
                    shrinkWrap: true, // Add this to limit ListView height
                    physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
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
                                      Icon(Icons.person),
                                      SizedBox(width: 10,),
                                      Text("${users[index]['name']} (Age: ${calcAge(users[index]['dob'])})"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_city),
                                      SizedBox(width: 10,),
                                      Text(users[index]['city']),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.phone),
                                      SizedBox(width: 10,),
                                      Text(users[index]['phone']),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.mail_outline_rounded),
                                      SizedBox(width: 10,),
                                      Text(users[index]['email']),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.favorite_border_rounded,size: 25,),
                                  SizedBox(height: 5,),
                                  Icon(Icons.edit,size: 25,),
                                  SizedBox(height: 5,),
                                  Icon(Icons.delete,size: 25,)

                                ],
                              ),
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
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    if(index == 0){
                      return HomePage();
                    }
                    else if(index == 1){
                      return CrudUser();
                    }
                    else if(index == 2){
                      return Userlist();
                    }
                    return HomePage();
                  } ));
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  int calcAge(String val){
    List split = val.split('-');
    return ((DateTime.now().year)) - int.parse(split[2]);
  }
}
