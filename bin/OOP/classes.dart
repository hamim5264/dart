void main (){
  ///class call and instance or object creation
  person p1 = new person();
  p1.name = 'hamim';
  p1.age = 21;
  p1.gender = 'male';
  p1.address = 'Dhaka';

  person p2 = new person();
  p2.name = 'basori';
  p2.age = 22;
  p2.gender = 'female';
  p2.address = 'rajshahi';

  ///printing object
  print(p1.name);
  print(p1.age);
  print(p1.gender);
  print(p1.address);
  p1.eating();
  p1.moving(carName: 'bus');
  p1.talking();
  print('\n');
  print(p2.name);
  print(p2.age);
  print(p2.gender);
  print(p2.address);
  p2.moving(carName: 'train');
  p2.talking(toWhom: 'leon');
  p2.eating();

}

///class creation
class person {
  ///attributes
  String  name = '';
  int age = 0;
  String gender = '';
  String address  = '';

  ///methods
void eating (){
  print("$name is eating");
}
void moving ({ required String carName}){ //named parameter
  print("$name is moving with $carName");
}
void talking ({String? toWhom}){ //optional parameter
  print("$name is talking with $toWhom");
}

}