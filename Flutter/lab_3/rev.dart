import "dart:io";

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int rev=0;


  while(a>0){
    int rem = a%10;
    rev = rev*10 + rem;
    a~/=10;
  }
  print(rev);
}
