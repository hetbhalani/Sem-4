import  "dart:io";

void main(){
  print("enter marks of s1: ");
  int s1 = int.parse(stdin.readLineSync()!);

  print("enter marks of s2: ");
  int s2 = int.parse(stdin.readLineSync()!);

  print("enter marks of s3: ");
  int s3 = int.parse(stdin.readLineSync()!);

  print("enter marks of s4: ");
  int s4 = int.parse(stdin.readLineSync()!);

  print("enter marks of s5: ");
  int s5 = int.parse(stdin.readLineSync()!);

  print((s1+s2+s3+s4+s5)/5);
}