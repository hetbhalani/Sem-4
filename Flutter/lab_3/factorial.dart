import "dart:io";

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int mul = 1;

  for(int i = 1; i<=a; i++){
    mul *= i;
  }
  print(mul);
}