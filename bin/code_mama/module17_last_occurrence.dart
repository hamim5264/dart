import 'dart:io';

int lastOccurrenceBinarySearch(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;
  int result = -1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (arr[mid] == target) {
      result = mid;
      low = mid + 1; // Move to the right to find the last occurrence
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return result;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> array =
      List<int>.from(stdin.readLineSync()!.split(' ').map((e) => int.parse(e)));
  int target = int.parse(stdin.readLineSync()!);

  int result = lastOccurrenceBinarySearch(array, target);

  if (result != -1) {
    print(result);
  } else {
    print("Element not found");
  }
}
