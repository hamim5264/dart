import 'dart:io';
import 'dart:math';
void main (){
  String? str = stdin.readLineSync();
  String? str2 = stdin.readLineSync();
  var space1  = str!.split(" ");
  var space2 = str2!.split(" ");

  double b = double.parse(space1[1]);
  double c = double.parse(space2[0]);
  double d = double.parse(space2[1]);
  double a = double.parse(space1[0]);


  double distance  = sqrt((b-d)*(b-d) +(c-a)*(c-a));
//double distance = sqrt((pow((b- c), 2)) + (pow((d- a), 2)));
  print("Distance: ${(distance).toStringAsFixed(2)}");
}