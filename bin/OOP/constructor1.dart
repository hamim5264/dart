void main (){
  person p1 = new person('hamim', 22, "male", "Dhaka");
  person p2 = new person('basori', 21, "female", "rajshahi");
  print(p1.name);
  print(p1.age);
  print(p1.gender);
  print(p1.address);
  print("\n");
  print(p2.name);
  print(p2.age);
  print(p2.gender);
  print(p2.address);

}

class person {
  late String name;
  late int age;
  late String gender;
  late String address;

  ///constructor creation
  person(String name, int age, String gender, String address) {
    this.name = name;
    this.age = age;
    this.gender = gender;
    this.address = address;
  }
}