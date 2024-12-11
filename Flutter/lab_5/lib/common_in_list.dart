import 'dart:io';
class FindCommon{
  FindCommon(List<int> l1, List<int>l2,int n){
    for(int i = 0; i<n; i++){
      for(int j = 0; j<n;j++){
        if(l1[i] == l2[j]){
          print(l1[i]);
        }
      }
    }
  }
}
void main(){
  List<int> l1 = [];
  List<int> l2 = [];
  print("Enter number of numbers: ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i = 0; i<n; i++){
    print("Enter element at ${i+1} index: ");
    int elm = int.parse(stdin.readLineSync()!);
    l1.add(elm);
  }

  print("Enter element in 2nd list: ");

  for(int i = 0; i<n; i++){
    print("Enter element at ${i+1} index: ");
    int elm = int.parse(stdin.readLineSync()!);
    l2.add(elm);
  }
  FindCommon sh = FindCommon(l1,l2,n);
}