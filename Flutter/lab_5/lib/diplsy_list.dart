import 'dart:io';
class SortHelper{
  SortHelper(List<int> l){
    l.sort();
    print(l);
  }
}
void main(){
  List<int> l = [];
  print("Enter number of numbers: ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i = 0; i<n; i++){
    int elm = int.parse(stdin.readLineSync()!);
    l.add(elm);
  }
  SortHelper sh = SortHelper(l);
}