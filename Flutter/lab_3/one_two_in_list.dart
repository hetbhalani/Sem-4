import "dart:io";

void main(){
  List <int> l= [4,6,2,3,3,2];
  Map <int , int> mp = {};

  for(int i = 0; i<l.length; i++){
    if(!mp.containsKey(l[i])){
      mp[l[i]] = 1;
    }
    else{
      int temp = mp[l[i]]!;
      mp[l[i]] = temp + 1;
    }
  }

  for (int i in mp.keys){
    if(mp[i] == 1){
      print(i);
    }
  }

  print(mp);
}