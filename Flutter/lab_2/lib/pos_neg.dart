import "dart:io";

void main(){
  int a = int.parse(stdin.readLineSync()!);

  if(a > 0){
    print("number is positive");
  }
  else{
    print("number is negative");
  }
}