import 'dart:io';

void main() {
  // Read input
  String input = stdin.readLineSync()!;
  List<int> values = input.split(' ').map(int.parse).toList();

  int l1 = values[0];
  int r1 = values[1];
  int l2 = values[2];
  int r2 = values[3];

  // Print the first segment from l1 to l2-1
  for (int i = l1; i < l2; i++) {
    if (i != l1) {
      stdout.write(' ');
    }
    stdout.write(i);
  }

  // Print the second segment from r2+1 to r1
  for (int i = r2 + 1; i <= r1; i++) {
    stdout.write(' ');
    stdout.write(i);
  }
}
