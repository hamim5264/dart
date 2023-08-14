import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");
 int x = int.parse(space[0]);
 int y = int.parse(space[1]);
 int z = int.parse(space[2]);

 if (x<y && x<z){
   print(x);
 }else if(y<x && y<z){
   print(y);
 }else{
   print(z);
 }

}