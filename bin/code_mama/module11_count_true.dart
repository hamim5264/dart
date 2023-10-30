import 'dart:io';

void main() {
  var input = stdin.readLineSync()!.split(' ');
  var length = int.parse(input[0]);
  var array = input.sublist(1).map((e) => e == '1').toList();
  var trueCount = countTrue(array);
  print(trueCount);
}

int countTrue(List<bool> array) {
  int count = 0;
  for (var element in array) {
    if (element == true) {
      count++;
    }
  }
  return count;
}
