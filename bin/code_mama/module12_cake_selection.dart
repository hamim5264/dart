import 'dart:io';
void main(){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");

  int weight = int.parse(space[0]);
  int sweetness = int.parse(space[1]);
  int calories = int.parse(space[2]);

  if(weight>=200 && weight<=300 && sweetness>=50 &&calories>=150){
    print("Yes");
  }else{
    print("No");
  }
}