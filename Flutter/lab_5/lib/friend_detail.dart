import 'dart:io';

class MitroNiNijiJankario{
  Map <String,String> mp = {"Het": "123456", "Meet": "123212432", "Vandan": "987654321"};

  void display(String name){
    print(mp[name]);
  }

}
void main(){
  MitroNiNijiJankario mj = MitroNiNijiJankario();
  mj.display("Vandan");

}