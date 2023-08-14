import 'dart:io';
void main (){
  double? r = double.parse(stdin.readLineSync()!);
  var pie = 3.14;
  var area = (pie*(r*r));
  print("The area of the circle is ${area.toStringAsFixed(2)} square units.");
}