import 'dart:io';

void main() {
  String input = stdin.readLineSync()!.trim().toLowerCase();

  // Checking the number and printing the result
  if (input == "zero" || input == "two" || input == "four" || input == "six" || input == "eight") {
    print("0");
  } else if (input == "one" || input == "three" || input == "five" || input == "seven" || input == "nine") {
    print("1");
  } else {
    print("Invalid input");
  }
}
