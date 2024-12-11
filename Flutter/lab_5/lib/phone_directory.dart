import 'dart:io';

class WhatIsYourPhoneNumber{
  Map<String,String> mp = {};

  Map add(String name, String num){
    mp[name] = num;
    return mp;
  }

  void display(){
    print(mp);
  }
}
void main(){
  WhatIsYourPhoneNumber nn = WhatIsYourPhoneNumber();

  nn.add("bruce", "698601234");
  nn.add("bruce1", "69801234");

  nn.display();
}