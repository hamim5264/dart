import 'oop_class1.dart';
void  main (){
  var obj = new MyClass();
  print(obj.name);
  print(obj.alpha);
  obj.addTwoNumbers(5, 5);
  ///static key word access
  /*
  static key word refer class
  it's related to class
  if we want to access it then we have to write class name not object.
   */
  MyClass.addThreeNumbers(1, 2, 3);
}