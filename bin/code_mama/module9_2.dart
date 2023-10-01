import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  String transformedString = transformString(input);
  print(transformedString);
}

String transformString(String input) {
  StringBuffer transformed = StringBuffer();
  int count = 0;

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (i % 3 == 2 && isAlphabetic(char)) {
      transformed.write(char.toUpperCase());
    } else {
      transformed.write(char);
    }

    if (isAlphabetic(char)) {
      count++;
    }

    if (count % 2 == 0) {
      count = 0;
    }
  }

  return transformed.toString();
}

bool isAlphabetic(String char) {
  return RegExp(r'[a-zA-Z]').hasMatch(char);
}
