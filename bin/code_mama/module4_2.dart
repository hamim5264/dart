import 'dart:io';
void main (){
  int num = int.parse(stdin.readLineSync()!);
  if(num>0){
    print("$num is a positive number.");
  }else if (num<0){
    print("$num is a negative number.");
  }else{
    print("The number is zero.");
  }
}