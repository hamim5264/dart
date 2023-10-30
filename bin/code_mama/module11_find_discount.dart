import 'dart:io';

void main() {
  String? str = stdin.readLineSync()!;
  var space = str.split(" ");
  int price = int.parse(space[0]);
  int discount = int.parse(space[1]);
  double initialTotalPrice;
  double fixedPrice;
  initialTotalPrice = ((price * discount) / 100);
  fixedPrice = (price - initialTotalPrice);
  print("Price: ${fixedPrice.toStringAsFixed(2)}");
}
