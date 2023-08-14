import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
  int x = int.parse(space[0]);
  int y = int.parse(space[1]);

  var reminder = (x%y);
  print(reminder);
}