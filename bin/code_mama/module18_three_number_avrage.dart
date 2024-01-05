import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
  double a = double.parse(space[0]);
  double b = double.parse(space[1]);
  double c = double.parse(space[2]);

  var result = ((a+b+c)/3);
  print("Average: ${result.toStringAsFixed(2)}");
}