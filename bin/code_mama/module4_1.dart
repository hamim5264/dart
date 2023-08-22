import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
  int num1 = int.parse(space[0]);
  int num2 = int.parse(space[1]);
  print("Before swapping: num1 = $num1, num2 = $num2");
  var temp;
  temp = num1;
  num1 = num2;
  num2 = temp;
  print("After swapping: num1 = $num1, num2 = $num2");
}