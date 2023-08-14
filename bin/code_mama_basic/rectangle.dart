import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
  int length = int.parse(space[0]);
  int wide = int.parse(space[1]);

  print(length*wide);
}