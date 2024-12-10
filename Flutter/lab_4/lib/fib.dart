import 'dart:io';

void main(){
  int a = int.parse(stdin.readLineSync()!);
  fibbo(a);
}

void fibbo(int n){
  int a = 0;
  int b = 1;
  int sum =0;

  print(0);
  print(1);
  for(int i = 0;i<n;i++){
    sum = a+b;
    a = b;
    b = sum;
    print(sum);
  }
}