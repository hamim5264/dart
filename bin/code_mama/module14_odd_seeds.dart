import 'dart:io';

void main() {
  // Reading input
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');

  // Parsing input
  int a = int.parse(inputList[0]);
  int b = int.parse(inputList[1]);

  // Swapping values if a is greater than b
  if (a > b) {
    int temp = a;
    a = b;
    b = temp;
  }

  // Calculate the sum of plants in fields with odd numbers between A and B
  int sum = 0;
  for (int i = a; i <= b; i++) {
    if (i % 2 != 0) {
      sum += i;
    }
  }

  // Print the result
  print(sum);
}
