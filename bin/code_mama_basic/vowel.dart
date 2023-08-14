import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  var count = 0;
  for (var i=0; i<str!.length; i++){
    if (str.contains('a') || (str.contains('e')) || (str.contains('i')) ||
        (str.contains('o')) || (str.contains('u')) ||str.contains('A') || (str.contains('E')) ||
        (str.contains('I')) || (str.contains('O')) || (str.contains('U')) ){
      print("The string contains a vowel.");
      count = count+1;
      break;
    }
    else{
      print("The string does not contain any vowel.");
      count;
      break;
    }
  }
}