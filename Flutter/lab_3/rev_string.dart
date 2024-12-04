import "dart:io";

void main(){
  String a = stdin.readLineSync()!;
  int n = a.length;
  String rev;

  while(n>0){
    print(a[n-1]);
    n--;
  }
}