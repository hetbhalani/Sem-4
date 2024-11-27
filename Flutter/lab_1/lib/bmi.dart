import "dart:io";

void main(){
  print("enter a height: ");
  int h1 = int.parse(stdin.readLineSync()!);

  print("enter a weight: ");
  int w1 = int.parse(stdin.readLineSync()!);

  double w = w1 * 0.45359237;
  double h = h1 * 0.254;

  print(w/(h*h));
}