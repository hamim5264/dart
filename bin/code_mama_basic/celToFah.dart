import 'dart:io';

void main (){
  double? cel = double.parse(stdin.readLineSync()!);
  double far = (1.8*cel)+32;
  print("The temperature in Fahrenheit is: ${far.toStringAsFixed(2)}");

}