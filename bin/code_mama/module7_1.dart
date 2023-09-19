import 'dart:io';
void main (){
  String? input = stdin.readLineSync();
  var space = input!.split(" ");

  int num1 = int.parse(space[0]);
  int num2 = int.parse(space[1]);
  int result;

 if(num1==101){
   result = (num2*10);
   print(result);
 }else if (num1==202){
   result = (num2*25);
   print(result);
 }else if (num1==303){
   result = (num2*5);
   print(result);
 }
}