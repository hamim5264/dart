import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");

  double base  = double.parse(space[0]);
  double height  = double.parse(space[1]);

  double result = (0.5*base*height);
  print(result.floorToDouble().toStringAsFixed(0));
}