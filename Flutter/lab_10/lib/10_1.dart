import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login>{
  GlobalKey<FormState> _key = new GlobalKey<FormState>();

  bool isHidden = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Center vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
              children: [
                TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),label:Text("Upyogkarta nu naam")),validator: (value){
                  if(value == null || value.isEmpty){
                    return "username is required";
                  }else if(value.length < 5){
                    return "username must be at least 5 character";
                  }else{
                    return null;
                  }
                },
                ),
                SizedBox(height: 15,),
                TextFormField(
                    obscureText: isHidden,decoration: InputDecoration(border: OutlineInputBorder(),label: Text("Khangi Shabd"),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isHidden = !isHidden;
                      });
                    }, icon: Icon(isHidden ? Icons.visibility : Icons.visibility_off))
                ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "username is required";
                    }else if(value.length < 8){
                      return "username must be at least 8 character";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  if(_key.currentState!.validate()){
                    Text("Login Successful");
                  }
                }, child: Text("Login Karo",style: TextStyle(color: Colors.white),) ,style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent, shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(12)),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
