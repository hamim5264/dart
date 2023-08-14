import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
  int a = int.parse(space[0]);
  int b = int.parse(space[1]);
  print("Before swapping: num1 = $a, num2 = $b");
  var temp;
  temp = a;
  a=b;
  b=temp;
  print("After swapping: num1 = $a, num2 = $b");
}