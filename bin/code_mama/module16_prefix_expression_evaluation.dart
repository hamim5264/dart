import 'dart:collection';
import 'dart:io';

int evaluatePrefix(String expression) {
  var stack = Queue<int>();

  for (int i = expression.length - 1; i >= 0; i--) {
    var char = expression[i];

    if (isDigit(char)) {
      stack.add(int.parse(char));
    } else {
      int operand1 = stack.removeLast();
      int operand2 = stack.removeLast();
      int result = performOperation(operand1, operand2, char);
      stack.add(result);
    }
  }

  return stack.removeLast();
}

bool isDigit(String s) {
  return int.tryParse(s) != null;
}

int performOperation(int operand1, int operand2, String operator) {
  switch (operator) {
    case '+':
      return operand1 + operand2;
    case '-':
      return operand1 - operand2;
    case '*':
      return operand1 * operand2;
    case '/':
      return operand1 ~/ operand2; // Integer division
    default:
      throw Exception("Invalid operator: $operator");
  }
}

void main() {
  stdout.write("");
  String input = stdin.readLineSync()!;

  try {
    int result = evaluatePrefix(input);
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
