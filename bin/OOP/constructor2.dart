void main (){
person p1 = new person('hamim', 22, 'male', 'dhaka' );
print(p1.name);
print(p1.age);
print(p1.gender);
print(p1.address);
print(person.count);

}
class person {
  static int count = 0;
  String name;
  int age;
  String gender;
  String address;
  String? university;
  ///shortcut_constructor
person (this.name, this.age, this.gender, this.address, [this.university])  {
  count ++;
}
}