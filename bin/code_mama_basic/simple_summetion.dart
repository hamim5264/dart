import 'dart:io';
void  main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
  int a = int.parse(space[0]);
  int b = int.parse(space[1]);
  print(a+b);
}