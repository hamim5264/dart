import 'dart:io';

String transformString(String input) {
  if (input.length < 3) {
    return input;
  }

  String transformed = '';
  int count = 0;

  for (int i = 0; i < input.length; i++) {
    if (count == 2) {
      transformed += 'x';
      count = 0;
    }

    transformed += input[i];
    count++;
  }

  return transformed;
}

void main() {
  String? input1 = stdin.readLineSync();

  String output1 = transformString(input1!);
  print(output1);
}
