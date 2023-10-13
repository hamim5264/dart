import 'dart:io';

void main() {
  String input = stdin.readLineSync()!; // Replace with actual input
  List<String> parts = input.split(" ");
  String s = parts[0];
  int k = int.parse(parts[1]);

  String result = minimizeString(s, k);

  print("Min = $result");
}

String minimizeString(String s, int k) {
  List<int> digits = s.split('').map((String digit) => int.parse(digit)).toList();

  for (int i = 0; i < s.length; i++) {
    if (k == 0) {
      break;
    }

    if (i == 0 && digits[i] != 1) {
      digits[i] = 1;
      k--;
    } else if (i != 0 && digits[i] != 0) {
      digits[i] = 0;
      k--;
    }
  }

  return digits.join();
}
