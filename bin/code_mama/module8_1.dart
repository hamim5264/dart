import 'dart:io';
void main() {
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');
  
  int startTime = int.parse(inputList[0]);
  int endTime = int.parse(inputList[1]);
  var time;
  if (startTime>endTime){
    time = (endTime+24) - startTime;
  }
  else if(startTime<endTime){
    time = endTime - startTime;
  }
  else if(startTime==endTime){
    time = 24;
  } if(time>24){
    print(time);
  }else{
    print(time);
  }

}
