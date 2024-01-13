import 'dart:io';

class InfixToPrefixConverter {
  String convertToPrefix(String infixExpression) {
    // Reverse the infix expression
    String reversedInfix = infixExpression.split('').reversed.join();

    // Replace '(' with ')' and vice versa
    reversedInfix = reversedInfix.replaceAll('(', 'temp');
    reversedInfix = reversedInfix.replaceAll(')', '(');
    reversedInfix = reversedInfix.replaceAll('temp', ')');

    // Convert the reversed infix expression to postfix
    String postfixExpression = convertToPostfix(reversedInfix);

    // Reverse the postfix expression to get the prefix expression
    String prefixExpression = postfixExpression.split('').reversed.join();

    return prefixExpression;
  }

  String convertToPostfix(String infixExpression) {
    List<String> output = [];
    List<String> stack = [];

    Map<String, int> precedence = {
      '+': 1,
      '-': 1,
      '*': 2,
      '/': 2,
      '^': 3,
    };

    List<String> tokens = infixExpression.split('');

    for (String token in tokens) {
      if (isOperand(token)) {
        output.add(token);
      } else if (token == '(') {
        stack.add(token);
      } else if (token == ')') {
        while (stack.isNotEmpty && stack.last != '(') {
          output.add(stack.removeLast());
        }
        stack.removeLast(); // Remove the '(' from the stack
      } else {
        while (stack.isNotEmpty &&
            precedence.containsKey(stack.last) &&
            precedence[token]! < precedence[stack.last]!) {
          output.add(stack.removeLast());
        }
        stack.add(token);
      }
    }

    while (stack.isNotEmpty) {
      output.add(stack.removeLast());
    }

    return output.join('');
  }

  bool isOperand(String symbol) {
    return symbol.compareTo('0') >= 0 && symbol.compareTo('9') <= 0;
  }
}

void main() {
  String input = stdin.readLineSync()!;

  InfixToPrefixConverter converter = InfixToPrefixConverter();
  String prefixExpression = converter.convertToPrefix(input);

  print(prefixExpression);
}
