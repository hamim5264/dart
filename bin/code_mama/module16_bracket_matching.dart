import 'dart:collection';
import 'dart:io';

bool areBracketsBalanced(String expression) {
  var stack = Queue<String>();

  Map<String, String> bracketPairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < expression.length; i++) {
    var char = expression[i];

    if (isOpeningBracket(char)) {
      stack.add(char);
    } else if (isClosingBracket(char)) {
      if (stack.isEmpty || stack.removeLast() != bracketPairs[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

bool isOpeningBracket(String s) {
  return s == '(' || s == '{' || s == '[';
}

bool isClosingBracket(String s) {
  return s == ')' || s == '}' || s == ']';
}

void main() {
  stdout.write("");
  String input = stdin.readLineSync()!;

  if (areBracketsBalanced(input)) {
    print("Brackets are balanced.");
  } else {
    print("Brackets are not balanced.");
  }
}
