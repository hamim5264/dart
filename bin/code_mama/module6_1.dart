import 'dart:io';
void main (){
  int? num = int.parse(stdin.readLineSync()!);
  double result;
  if(num>1000){
    print(0);
  }else{
    result = ((1000-num)/2);
    print("${result.toStringAsFixed(0)}");
  }
}