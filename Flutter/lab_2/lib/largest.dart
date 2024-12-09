import 'dart:io';

void main(){
  print("enter first number: ");
  int a = int.parse(stdin.readLineSync()!);
  print("enter second number: ");
  int b = int.parse(stdin.readLineSync()!);
  print("enter third number: ");
  int c = int.parse(stdin.readLineSync()!);

  List l =[a,b,c];
  l.sort();

  print(l[2]);
}