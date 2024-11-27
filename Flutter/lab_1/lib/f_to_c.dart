import "dart:io";

void main(){
  print("Enter temp in ferenhite: ");
  double f = double.parse(stdin.readLineSync()!);
  
  print(((f-32)*5)/9);
}