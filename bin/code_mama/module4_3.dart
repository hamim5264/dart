import 'dart:io';
import 'dart:math';
void main (){
  String? str = stdin.readLineSync();
  String? str2 = stdin.readLineSync();
  var space1 = str!.split(" ");
  var space2 = str2!.split(" ");
  double a = double.parse(space1[0]);
  double b = double.parse(space1[1]);
  double c = double.parse(space2[0]);
  double d = double.parse(space2[1]);
  
  double distance = sqrt((b-d)*(b-d) + (c-a)*(c-a));
  print("Distance: ${distance.toStringAsFixed(2)}");
  
}