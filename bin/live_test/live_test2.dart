class Student {
  String name;
  int roll;
  String address;
  Student (this.name, this.roll, this.address);

  void sayHello(){
    print("Hello, my name is $name.");
  }
  int getRollSquared(int roll){
    return (roll*roll);
  }
}
void main (){
  Student student = new Student("Ostad", 3, "Baridhara, Dhaka");
  student.sayHello();
  print("ARoll squared: ${student.getRollSquared(3)}");
}