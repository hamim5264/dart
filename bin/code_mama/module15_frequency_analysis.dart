import 'dart:io';

void main() {
  // Read the number of integers
  int n = int.parse(stdin.readLineSync()!);

  // Read the list of integers
  List<int> numbers = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();

  // Create a map to store the frequency of each number
  Map<int, int> frequencyMap = {};

  // Iterate through the list of numbers and count their frequency
  for (int number in numbers) {
    frequencyMap[number] = (frequencyMap[number] ?? 0) + 1;
  }

  // Sort the frequency map by value, then by the order of appearance
  List<MapEntry<int, int>> sortedList = frequencyMap.entries.toList()
    ..sort((a, b) {
      // Sort by frequency in descending order
      int freqComparison = b.value.compareTo(a.value);
      if (freqComparison != 0) {
        return freqComparison;
      } else {
        // If frequencies are equal, maintain the order of appearance
        return numbers.indexOf(a.key).compareTo(numbers.indexOf(b.key));
      }
    });

  // Print the number of unique integers
  print(sortedList.length);

  // Print the sorted list of integers and their frequencies
  for (MapEntry<int, int> entry in sortedList) {
    print('${entry.key} ${entry.value}');
  }
}
