import 'dart:io';

class PrefixToPostfixConverter {
  String convertToPostfix(String prefixExpression) {
    List<String> stack = [];
    for (int i = prefixExpression.length - 1; i >= 0; i--) {
      String symbol = prefixExpression[i];

      if (isOperand(symbol)) {
        stack.add(symbol);
      } else {
        String operand1 = stack.removeLast();
        String operand2 = stack.removeLast();
        stack.add(operand1 + operand2 + symbol);
      }
    }
    return stack.isNotEmpty ? stack.last : '';
  }

  bool isOperand(String symbol) {
    return symbol.compareTo('0') >= 0 && symbol.compareTo('9') <= 0;
  }
}

void main() {
  String input = stdin.readLineSync()!;
  PrefixToPostfixConverter converter = PrefixToPostfixConverter();
  String postfixExpression = converter.convertToPostfix(input);
  print(postfixExpression);
}
