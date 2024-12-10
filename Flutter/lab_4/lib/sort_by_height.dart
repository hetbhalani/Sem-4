import 'dart:io';
import 'dart:math';

void main(){
  List<String> l1 = ["Het","Meet","Vandan"];
  List<int> l2 = [1,3,2];

  helper(l1,l2);
}

void helper(List l1, List l2){
  Map<String, int> mp = {};

  for(int i = 0; i<l1.length;i++){
    mp[l1[i]] = l2[i];
  }
  l2.sort();
  for(int i = 0; i<l1.length;i++){
    print(mp[l2[i]]);
  }}