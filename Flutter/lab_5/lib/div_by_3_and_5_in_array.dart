import 'dart:io';

void main(){
  List<int> l = [];
  int sum = 0;

  print("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i = 0; i<n; i++){
    int elm = int.parse(stdin.readLineSync()!);
    l.add(elm);
  }

  for(int i = 0; i<n; i++){
    if(l[i] % 3 == 0 || l[i] % 5 == 0){
      sum += l[i];
    }
  }
  print(sum);
}