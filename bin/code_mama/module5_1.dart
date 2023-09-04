import 'dart:io';
void main() {
  String? input = stdin.readLineSync();
  var space = input!.split(" ");

  int operand1 = int.parse(input[0]);
  int operand2 = int.parse(input[4]);
  String operator = input[2];

  int result;
  if (operator == '+') {
    result = operand1 + operand2;
  } else if (operator == '-') {
    result = operand1 - operand2;
  } else if (operator == '*') {
    result = operand1 * operand2;
  } else if (operator == '/') {
    if (operand2 != 0) {
      result = operand1 ~/ operand2; // Use integer division
    } else {
      print("Error: Division by zero");
      return;
    }
  } else {
    print("Error: Invalid operator");
    return;
  }
  print("$result");
}
