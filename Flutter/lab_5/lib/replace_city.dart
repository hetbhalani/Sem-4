import 'dart:io';
class ReplaceHelper{
  ReplaceHelper(List<String> l){
    l[l.indexOf("Ahmedabad")] = "Surat";

    print(l);
  }
}
void main(){
  List<String> l = ["Delhi","Mumbai", "Bangalore", "Hyderabad","Ahmedabad"];

  ReplaceHelper rh = ReplaceHelper(l);
}