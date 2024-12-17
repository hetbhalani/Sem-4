import 'dart:io';

import 'package:crud/user.dart';

void main(){
  User user = User();

  int ch = 0;

  do{
    print(" Enter 1 to add user\n Enter 2 to remove user\n Enter 3 to update user\n Enter 4 to display user\n Enter 5 to Break");
    int ch = int.parse(stdin.readLineSync()!);
    if(ch == 1){
      print("Enter name: ");
      String name = stdin.readLineSync()!;
      print("Enter age: ");
      String age = (stdin.readLineSync()!);
      user.addUser(name: name, age: age);
    }
    else if(ch == 2){
      print("Enter delete id: ");
      String id = (stdin.readLineSync()!);
      user.deleteUser(id);
    }
    else if(ch == 3){
      print("Enter update id: ");
      String id = (stdin.readLineSync()!);
      print("Enter name: ");
      String name = stdin.readLineSync()!;
      print("Enter age: ");
      String age = (stdin.readLineSync()!);


      user.updateUser(name: name, age: age, id: id);
    }
    else if(ch == 4){
      user.showUser();
    }
    else if(ch == 5){
      break;
    }
  }while(ch != 5);
}