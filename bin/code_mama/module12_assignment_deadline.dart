import 'dart:io';
void main(){
  String? str = stdin.readLineSync();
  var space = str!.split(" ");

  int minutes = int.parse(space[0]);
  int assignmentOne = int.parse(space[1]);
  int assignmentTwo = int.parse(space[2]);
  if(assignmentOne+assignmentTwo <= minutes){
    print("Yes");
  }else{
    print("No");
  }
}