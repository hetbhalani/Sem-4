import "dart:io";

void main(){
  double result = 0;
  print("enter first number: ");
  double a = double.parse(stdin.readLineSync()!);
  print("enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  print("enter 1 to Addition\n");
  print("enter 2 to Subtraction\n");
  print("enter 3 to Multiplication\n");
  print("enter 4 to Division\n");

  double n = double.parse(stdin.readLineSync()!);


  //using if-else

  if(n == 1){
      print(a+b);
  }
  else if(n == 2){
      print(a-b);
  }
  else if(n == 3){
      print(a*b);
  }
  else if(n == 4){
      print(a/b);
  }
  else{
      print("Bhai barobar number nakh ne....");
  }

  //using switch-case

  // switch (n) {
  //   case 1:
  //     result = a + b;
  //     print("Result: ${result}");
  //     break;
  //
  //   case 2:
  //     result = a - b;
  //     print("Result:  ${result}");
  //     break;
  //
  //   case 3:
  //     result = a * b;
  //     print("Result:  ${result}");
  //     break;
  //
  //   case 4:
  //     result = a/b;
  //     print("Result:  ${result}");
  //     break;
  //
  //   default:
  //     print("Bhai barobar number nakh....");
  // }
}