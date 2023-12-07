import 'dart:io';

void main() {
  // Read input string
  String inputString = stdin.readLineSync()!;

  // Calculate and print the number of unique characters
  int uniqueCount = countUniqueCharacters(inputString);
  print(uniqueCount);
}

int countUniqueCharacters(String s) {
  // Use a Set to store unique characters
  Set<String> uniqueCharacters = {};

  // Iterate through each character in the string
  for (int i = 0; i < s.length; i++) {
    // Add each character to the set
    uniqueCharacters.add(s[i]);
  }

  // Return the size of the set, which represents the number of unique characters
  return uniqueCharacters.length;
}
