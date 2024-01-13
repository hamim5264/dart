import 'dart:collection';
import 'dart:io';

bool isOperator(String c) {
  return c == '+' || c == '-' || c == '*' || c == '/';
}

int getPrecedence(String op) {
  if (op == '+' || op == '-') {
    return 1;
  } else if (op == '*' || op == '/') {
    return 2;
  }
  return 0;
}

String infixToPostfix(String infix) {
  StringBuffer postfix = StringBuffer();
  Queue<String> stack = Queue<String>();

  for (int i = 0; i < infix.length; i++) {
    String character = infix[i];

    if (RegExp(r'[0-9]').hasMatch(character)) {
      postfix.write(character);
    } else if (character == '(') {
      stack.addLast(character);
    } else if (character == ')') {
      while (stack.isNotEmpty && stack.last != '(') {
        postfix.write(stack.removeLast());
      }
      stack.removeLast(); // Remove the '(' from the stack
    } else if (isOperator(character)) {
      while (stack.isNotEmpty &&
          getPrecedence(stack.last) >= getPrecedence(character)) {
        postfix.write(stack.removeLast());
      }
      stack.addLast(character);
    }
  }

  while (stack.isNotEmpty) {
    postfix.write(stack.removeLast());
  }

  return postfix.toString();
}

void main() {
  var input = stdin.readLineSync()!;

  String postfix = infixToPostfix(input);
  print(postfix);
}
