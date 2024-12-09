import 'dart:io';

void main(){
print("enter 5 subjects mark : ");

print("enter first subject: ");
int a = int.parse(stdin.readLineSync()!);
print("enter second subject: ");
int b = int.parse(stdin.readLineSync()!);
print("enter third subject: ");
int c = int.parse(stdin.readLineSync()!);
print("enter fourth subject: ");
int d = int.parse(stdin.readLineSync()!);
print("enter fifth subject: ");
int e = int.parse(stdin.readLineSync()!);

double per = 0;

per=(a+b+c+d+e)/5.0;

if(per >= 0 && per <= 35){
print("fail");
}
else if(per > 36 && per <= 45){
print("pass");
}
else if(per > 46 && per <= 60){
print("second class");
}
else if(per > 61 && per <= 70){
print("first class");
}
else if(per > 71 && per <= 100){
print("destriction");
}
else{
print("enter velid marks");
}
}
