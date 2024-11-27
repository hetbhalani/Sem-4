import  "dart:io";

void main(){
  print("enter meter: ");
  double m = double.parse(stdin.readLineSync()!);

  print(m*3.28084);
}