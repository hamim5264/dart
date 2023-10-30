import 'dart:io';

void main() {
  var input = stdin.readLineSync()!.split(' ');
  var wheels = int.parse(input[0]);
  var carBodies = int.parse(input[1]);
  var figures = int.parse(input[2]);

  var completeCars = calculateCompleteCars(wheels, carBodies, figures);
  print(completeCars);
}

int calculateCompleteCars(int wheels, int carBodies, int figures) {
  // Each car needs 4 wheels, 1 car body, and 2 figures
  // So the limiting factor would be the available quantity of any part
  int possibleCars = 0;
  while (wheels >= 4 && carBodies >= 1 && figures >= 2) {
    possibleCars++;
    wheels -= 4;
    carBodies -= 1;
    figures -= 2;
  }
  return possibleCars;
}
