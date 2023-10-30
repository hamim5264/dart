import 'dart:io';

void main() {
  var input = stdin.readLineSync()!;
  var result = checkFunnyString(input);
  print(result ? 'Yes' : 'No');
}

bool checkFunnyString(String s) {
  for (int i = 0; i < s.length; i++) {
    if (i % 2 == 0) {
      if (!isLowerCase(s[i])) {
        return false;
      }
    } else {
      if (!isUpperCase(s[i])) {
        return false;
      }
    }
  }
  return true;
}

bool isUpperCase(String s) {
  return s.toUpperCase() == s;
}

bool isLowerCase(String s) {
  return s.toLowerCase() == s;
}