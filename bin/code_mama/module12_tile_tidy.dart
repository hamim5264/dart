import 'dart:io';

void main() {
  var n = int.parse(stdin.readLineSync()!);
  var s = stdin.readLineSync()!;
  var count = 0;

  for (var i = 1; i < n; i++) {
    if (s[i] == s[i - 1]) {
      count++;
    }
  }

  print(count);
}
