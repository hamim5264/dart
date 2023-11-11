import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int n = int.parse(input[0]);
  int x = int.parse(input[1]);

  int totalTime = n * x;
  for (int i = 1; i < n; i++) {
    int hi = i;
    totalTime += hi;
  }

  print(totalTime);
}
