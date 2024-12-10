import "dart:io";

void main(){
  var l = [1,2,3,4,5,6,7,8,9];
  find_min_max(l);
}

void find_min_max(var l){
  int o_cnt = 0;
  int e_cnt = 0;

  for(int i = 0; i<l.length; i++){
    if(l[i]%2 == 0){
      e_cnt++;
    }
    else{
      o_cnt++;
    }
  }
  print("There are ${e_cnt} even and ${o_cnt} odd numebers");
}