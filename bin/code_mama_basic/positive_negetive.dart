import 'dart:io';
void main (){
  int? x = int.parse(stdin.readLineSync()!);
  if (x>0){
    print("$x is a positive number.");
  }else if(x<0){
    print("$x is a negative number.");
  }else{
    print("The number is zero.");
  }
}