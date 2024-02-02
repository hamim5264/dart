import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  // Calling the function to calculate the minimum number of steps
  int steps = calculateSteps(n);
  print(steps);
}

int calculateSteps(int n) {
  if (n == 1) {
    // Base case: if the number is already 1, no steps needed
    return 0;
  }

  // Initialize steps with the maximum possible value
  int steps = 1 + calculateSteps(n - 1);

  if (n % 2 == 0) {
    steps = min(steps, 1 + calculateSteps(n ~/ 2));
  }

  if (n % 3 == 0) {
    steps = min(steps, 1 + calculateSteps(n ~/ 3));
  }

  return steps;
}

int min(int a, int b) {
  return (a < b) ? a : b;
}
