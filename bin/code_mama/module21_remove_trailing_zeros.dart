import 'dart:io';

void main() {
  // Taking input from the user
  String input = stdin.readLineSync() ?? "";

  // Removing trailing zeroes after the decimal point
  String result = removeTrailingZeroes(input);

  // Printing the result
  print(result);
}

String removeTrailingZeroes(String input) {
  // Split the number into integer and fractional parts
  List<String> parts = input.split('.');

  // If there is a fractional part
  if (parts.length > 1) {
    // Remove trailing zeroes from the fractional part
    parts[1] = parts[1].replaceAll(RegExp('0*\$'), '');

    // If the fractional part becomes empty, remove the decimal point
    if (parts[1].isEmpty) {
      return parts[0];
    } else {
      return parts.join('.');
    }
  } else {
    // If there is no fractional part, return the input as is
    return input;
  }
}
