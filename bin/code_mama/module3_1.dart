import 'dart:io';
void main (){
  String? str = stdin.readLineSync();
  for(var i =0; i<str!.length; i++){
    if (str.contains('a')||str.contains('e')||str.contains('i')||str.contains('o')||
        str.contains('u')||str.contains('A')||str.contains('E')||str.contains('I')||
        str.contains('O')||str.contains('U')){
      print("The string contains a vowel.");
      break;
    }else {
      print("The string does not contain any vowel.");
      break;
    }
  }
}