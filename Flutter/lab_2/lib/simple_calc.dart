import 'dart:io';

void main(){
  String str = stdin.readLineSync();
  List l = [];

  l.addAll(str.split(" "));

  for (int i = 0; i<l.length(); i++){
    if (l[i] == '/'){
      double temp = int.parse(l[i-1]) / int.parse(l[i+1]);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.insert(i,temp);
    }
  }
  for (int i = 0; i<l.length(); i++){
    if (l[i] == '*'){
      double temp = int.parse(l[i-1]) * int.parse(l[i+1]);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.insert(i,temp);
    }
  }
  for (int i = 0; i<l.length(); i++){
    if (l[i] == '+'){
      double temp = int.parse(l[i-1]) + int.parse(l[i+1]);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.insert(i,temp);
    }
  }
  for (int i = 0; i<l.length(); i++){
    if (l[i] == '-'){
      double temp =int.parse(l[i-1]) - int.parse(l[i+1]);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.removeAt(i-1);
      l.insert(i,temp);
    }
  }

  print(temp);

}

int prec(String ch){

  switch(ch){
    case "+" or "-":
      return 1;

    case "*" or "/":
      return 2;
}