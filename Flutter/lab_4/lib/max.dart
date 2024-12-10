import 'dart:io';

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  find_max(a, b);
}

void find_max(int a, int b){
  if (a>b){
    print("a is largest");
  }
  else{
    print("b is largest");
  }
}