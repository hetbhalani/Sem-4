import 'dart:io';

void main(){
  int pos_sum = 0;
  int neg_sum = 0;

  while(true){
    int a = int.parse(stdin.readLineSync()!);
    if(a%2 == 0 && a>0){
      pos_sum += a;
    }
    else if(a == 0){
      break;
    }
    else{
      neg_sum += a;
    }
  }
  print(pos_sum);
  print(neg_sum);
}