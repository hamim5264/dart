import 'dart:io';

void main() {
  // Taking input from the user
  String input = stdin.readLineSync() ?? "";

  // Converting the input to an integer
  int number = int.tryParse(input) ?? 0;

  // Checking if the number is a Repdigit
  bool isRepdigit = checkRepdigit(number);

  // Printing the result
  print(isRepdigit);
}

bool checkRepdigit(int number) {
  // Convert the number to a string to easily access individual digits
  String numberString = number.toString();

  // Check if all digits are the same
  return numberString.split('').toSet().length == 1;
}
