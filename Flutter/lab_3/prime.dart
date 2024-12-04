import "dart:io";
import 'dart:math';

void main(){
  int a = int.parse(stdin.readLineSync()!);
  bool flag = false;

  for(int i = 2; i<=sqrt(a); i++){
    if(i%2 == 0){
      flag = true;
    }
  }
  if(flag){
    print("not a prime");
  }
  else{
    print("prime");
  }
}