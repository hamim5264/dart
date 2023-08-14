import 'dart:io';
void main (){
  double? salary = double.parse(stdin.readLineSync()!);
  var bonus = ((salary*10)/100);
  print(bonus.floorToDouble().toStringAsFixed(0));
}