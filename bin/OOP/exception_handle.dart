import 'dart:async';
///exception / fault
void main (){
try {
  throw YooException();
  dynamic a = 12/0;
  int b = a+25;
  print(a);
  print(b);
} on YooException {
  print("My fault");
} on TimeoutException{
  print("Time out exception");
} on FormatException{
  print("Format exception");
} catch (err) {
  print(err);
} finally {
  print("Must be done");
}
print("Hello dart");
}

class YooException implements Exception {
  String toString (){
    return "This is my exception";
  }
}