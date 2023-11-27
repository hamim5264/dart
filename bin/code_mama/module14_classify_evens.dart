import 'dart:io';
void main(){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
  int count = 0;
  int num1 = int.parse(space[0]);
  int num2 = int.parse(space[1]);
  int num3 = int.parse(space[2]);
  int num4 = int.parse(space[3]);
  int num5 = int.parse(space[4]);
  int num6 = int.parse(space[5]);
  if(num1 %2 ==0){
    count++;
  }
  if(num2 %2 ==0){
    count++;
  }
  if(num3 %2 ==0){
    count++;
  }
  if(num4 %2 ==0){
    count++;
  }
  if(num5 %2 ==0){
    count++;
  }
  if(num6 %2 ==0){
    count++;
  }
  print(count);
}