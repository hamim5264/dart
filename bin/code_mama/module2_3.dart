import 'dart:io';

void main() {
  String? k = stdin.readLineSync();
  var lst = k!.split(" ");

  int x = int.parse(lst[0]);
  int y = int.parse(lst[1]);
  print(x+y);

}