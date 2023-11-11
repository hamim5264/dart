import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> strings = List.generate(n, (_) => stdin.readLineSync()!);

  List<String> fullForms = [];
  for (int i = 0; i < n - 2; i++) {
    if (strings[i][0] == 'F' &&
        strings[i + 1][0] == 'F' &&
        strings[i + 2][0] == 'T') {
      fullForms.add('${strings[i]} ${strings[i + 1]} ${strings[i + 2]}');
    }
  }

  print(fullForms.length);
  for (String form in fullForms) {
    print(form);
  }
}
