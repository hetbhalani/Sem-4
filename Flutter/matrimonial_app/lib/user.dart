import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class User {
  String name;
  String email;
  String phone;
  String dob;
  String city;
  bool gender;
  // String hobbies;
  String password;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.dob,
    required this.city,
    required this.gender,
    // required this.hobbies,
    required this.password,
  });
}

class CrudUser extends StatefulWidget {
  const CrudUser({super.key});

  @override
  State<CrudUser> createState() => _CrudUserState();
}

class _CrudUserState extends State<CrudUser> {
  List<Map<String,dynamic>> users = [];
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController city = TextEditingController();
  // TextEditingController gender = TextEditingController();
  // TextEditingController hobbies = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isMale = true;

  String? selectedCity;
  List<String> hobbies = ["Reading", "Traveling", "Gaming", "Cooking"];
  List<bool> selectedHobbies = [false, false, false, false];

  List<String> cities = [
    'Junagadh',
    'Rajkot',
    'Surat',
    'Nadiad',
    'Ahmdabad',
    'Vadodara'
  ];

  bool isPasswordHidden = true;
  bool isValidName = true;
  bool isValidEmail = true;
  bool isValidpass = true;
  bool isValidphone = true;
  bool isValiddob = true;
  bool isValidcity = true;

  GlobalKey<FormState> fk = GlobalKey();
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
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(255, 48, 48, 0.8),
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [
        //         Color.fromRGBO(188, 18, 238, 0.5),
        //         Color.fromRGBO(255, 100, 200, 0.5),
        //       ],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //     ),
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(18),
          // padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the container
            borderRadius: BorderRadius.circular(15), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 10), // Shadow position
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30,20,0,0),
                child: Text(
                  "User Registration Form",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 48, 48, 1.0)
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: fk,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: name,
                          maxLength: 50,
                          decoration: InputDecoration(
                            labelText: "User Name",
                            prefixIcon: Icon(
                                Icons.account_circle_rounded,
                                color: isValidName ? Colors.black54 : Colors.red
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                isValidName = false;
                              });
                              return 'Please enter your name';
                            }
                            else{
                              setState(() {
                                isValidName = true;
                              });
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: email,
                          // maxLength: 80,
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(
                                Icons.email_outlined,
                                color: isValidEmail ? Colors.black54 : Colors.red
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                isValidEmail = false;
                              });
                              return 'Please enter your name';
                            }
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              setState(() {
                                isValidEmail = false;
                              });
                              return 'Please enter a valid email';
                            }
                            else{
                              setState(() {
                                isValidEmail = true;
                              });
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: isPasswordHidden,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(
                                Icons.lock,
                                color: isValidpass ? Colors.black54 : Colors.red
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,10.0,0),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordHidden = !isPasswordHidden;
                                  });
                                },
                                icon: Icon(
                                  isPasswordHidden
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,

                                ),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                isValidpass = false;
                              });
                              return 'Please enter password';
                            }
                            if (value.length != 8 || !RegExp(r'^\d{8}$').hasMatch(value)) {
                              setState(() {
                                isValidpass = false;
                              });
                              return 'Enter 8 digit Password';
                            }
                            else{
                              setState(() {
                                isValidpass = true;
                              });
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: phone,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Mobile Number",
                            prefixIcon: Icon(
                                Icons.phone,
                                color: isValidphone ? Colors.black54 : Colors.red
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                isValidphone = false;
                              });
                              return 'Please enter your phone number';
                            }
                            if (value.length != 10 || !RegExp(r'^\d+$').hasMatch(value)) {
                              setState(() {
                                isValidphone = false;
                              });
                              return 'Please enter a valid 10-digit phone number';
                            }
                            else{
                              setState(() {
                                isValidphone = true;
                              });
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: dob,
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Date of Birth",
                            prefixIcon: Icon(
                                Icons.calendar_today,
                                color: isValiddob ? Colors.black54 : Colors.red
                            ), // Calendar icon
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onTap: () async {
                            // Open the date picker when tapped
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );

                            if (pickedDate != null) {
                              setState(() {
                                dob.text =
                                    "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
                              });
                            }
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                isValiddob = false;
                              });
                              return 'Please select your date of birth';
                            }
                            List split = value.split('-');
                            // print(DateTime.now().year.toString());
                            if(((DateTime.now().year)) - int.parse(split[2]) < 21){
                              setState(() {
                                isValiddob = false;
                              });
                              // print("no");
                              return 'You are under age';
                            }
                            else{
                              setState(() {
                                isValiddob = true;
                              });
                            }
                            // else{
                            //   print("yesssss");
                            // }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: RadioListTile<bool>(
                                    title: Text("Male"),
                                    value: true,
                                    groupValue: isMale,
                                    onChanged: (value) {
                                      setState(() {
                                        isMale = value!;
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RadioListTile<bool>(
                                    title: Text("Female"),
                                    value: false,
                                    groupValue: isMale,
                                    onChanged: (value) {
                                      setState(() {
                                        isMale = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField<String>(
                          value: selectedCity,
                          focusColor: Colors.transparent,
                          decoration: InputDecoration(
                            labelText: "Select Your City",
                            prefixIcon: Icon(
                                Icons.location_city,
                                color: isValidcity ? Colors.black54 : Colors.red
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          items: cities.map<DropdownMenuItem<String>>((String city) {
                            return DropdownMenuItem<String>(
                              value: city,
                              child: Text(city),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCity = newValue; // Update the selected city
                            });
                          },
                          validator: (value){
                            if(value == null || value.isEmpty){
                              setState(() {
                                isValidcity = false;
                              });
                              return 'Plsese select your City';
                            }
                            else{
                              setState(() {
                                isValidcity = true;
                              });
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          // decoration: BoxDecoration(
                          //   gradient: LinearGradient(
                          //     colors: [
                          //       Color.fromRGBO(188, 18, 238, 0.5),
                          //       Color.fromRGBO(255, 100, 200, 0.5),
                          //     ],
                          //     begin: Alignment.topLeft,
                          //     end: Alignment.bottomRight,
                          //   ),
                          //   borderRadius: BorderRadius.circular(12), // Match button corners
                          // ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(255, 48, 48, 0.8),
                                      minimumSize: Size(10,50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12), // Match gradient corners
                                      ),
                                    ),
                                    onPressed: () {
                                      if(fk.currentState!.validate()){
                                        User newUser = User(
                                          name: name.text,
                                          email: email.text,
                                          phone: phone.text,
                                          dob: dob.text,
                                          city: selectedCity ?? '',
                                          gender: isMale,
                                          // hobbies: selectedHobbiesString,
                                          password: password.text,
                                        );

                                        setState(() {
                                          users.add({
                                            'name': newUser.name,
                                            'email': newUser.email,
                                            'phone': newUser.phone,
                                            'dob': newUser.dob,
                                            'city': newUser.city,
                                            'gender': newUser.gender ? 'Male' : 'Female',
                                            // 'hobbies': newUser.hobbies,
                                            'password': newUser.password,
                                          });
                                        });
                                        name.clear();
                                        email.clear();
                                        phone.clear();
                                        dob.clear();
                                        password.clear();
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(
                                            content: Row(
                                              children: [
                                                Icon(Icons.check_circle, color: Colors.green),
                                                SizedBox(width: 8),
                                                Text("User added successfully!"),
                                              ],
                                            ),
                                            backgroundColor: Colors.black87,
                                            behavior: SnackBarBehavior.floating,
                                            duration: Duration(seconds: 3),
                                          ),
                                        );

                                        print(users);
                                      }
                                      else{
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(
                                            content: Row(
                                              children: [
                                                Icon(Icons.cancel_outlined, color: Colors.red),
                                                SizedBox(width: 8),
                                                Text("Please fill all fields correctly"),
                                              ],
                                            ),
                                            backgroundColor: Colors.black87,
                                            behavior: SnackBarBehavior.floating,
                                            duration: Duration(seconds: 3),
                                          ),
                                        );
                                        print(users);
                                      }
                                    },
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white, // Text color
                                      ),
                                    ),

                                  ),
                                  SizedBox(width: 50,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(255, 48, 48, 0.8),
                                      minimumSize: Size(10,50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12), // Match gradient corners
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        name.clear();
                                        email.clear();
                                        password.clear();
                                        phone.clear();
                                        dob.clear();
                                        city.clear();
                                      });
                                    },
                                    child: Text(
                                      "Reset",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white, // Text color
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                            ],
                          ),

                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
