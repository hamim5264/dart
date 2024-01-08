import 'dart:io';

bool isValidCode(String input) {
  if (input.length != 7 || !input.startsWith('#')) {
    return false;
  }

  String code = input.substring(1);

  for (int i = 0; i < code.length; i++) {
    if (!((code.codeUnitAt(i) >= 48 && code.codeUnitAt(i) <= 57) ||
        (code.codeUnitAt(i) >= 65 && code.codeUnitAt(i) <= 70) ||
        (code.codeUnitAt(i) >= 97 && code.codeUnitAt(i) <= 102))) {
      return false;
    }
  }

  return true;
}

void main() {
  String input = stdin.readLineSync()!;
  bool result = isValidCode(input);

  print(result ? "true" : "false");
}
