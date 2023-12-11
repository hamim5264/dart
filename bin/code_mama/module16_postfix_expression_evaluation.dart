import 'dart:collection';
import 'dart:io';

int evaluatePostfix(String expression) {
  var stack = Queue<int>();

  for (int i = 0; i < expression.length; i++) {
    var char = expression[i];

    if (isDigit(char)) {
      stack.add(int.parse(char));
    } else {
      int operand2 = stack.removeLast();
      int operand1 = stack.removeLast();
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
    int result = evaluatePostfix(input);
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
