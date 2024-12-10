import 'dart:io';
import 'dart:math';

void main(){
  int a = int.parse(stdin.readLineSync()!);

  if(check(a) == 1){
    print("Prime");
  }
  else{
    print("not prime");
  }
}

int check(int n){
  for(int i = 2;i<sqrt(n);i++){
    if(n%i == 0){
      return 0;
    }
  }
    return 1;
}