import 'dart:io';
void main (){
  String line1 = stdin.readLineSync()!;
  String line2 = stdin.readLineSync()!;
  var data  = line1.split(" ");
  var a = data[0];
  var b = data[1];
  var c = data[2];
  var temp = a;
  a = c;
  c = b;
  b = temp;
  var sequence = line2.split("");
  for(int i = 0; i<sequence.length; i++){
    if(sequence[i]=="A") stdout.write(a+" ");
    else if (sequence[i]=="B") stdout.write(b+" ");
    else if (sequence[i]=="C") stdout.write(c+" ");
  }
}