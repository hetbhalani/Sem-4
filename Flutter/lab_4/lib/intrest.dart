import 'dart:io';

void main(){
    print(calc_intrest(12, 123, 9));

}

int calc_intrest(int p,int r, int t){
  int i = 0;
  i = (p*r*t)~/100;
  return i;
}