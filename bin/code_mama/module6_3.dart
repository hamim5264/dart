import 'dart:io';
void main (){
  int? num = int.parse(stdin.readLineSync()!);
  double result;
  result = ((num -300)/2);
  print("${result.toStringAsFixed(0)}");
}