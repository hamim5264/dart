import 'dart:io';

bool canFormConsecutiveList(int n, List<int> arr) {
  arr.sort(); // Sort the array in ascending order

  for (int i = 0; i < n - 1; i++) {
    // Check if the difference between adjacent elements is 1
    if (arr[i + 1] - arr[i] != 1) {
      return false;
    }
  }

  return true;
}

void main() {

  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = List<int>.from(stdin.readLineSync()!.split(' ').map((e) => int.parse(e)));

  bool result = canFormConsecutiveList(n, arr);

  print(result ? "true" : "false");
}
