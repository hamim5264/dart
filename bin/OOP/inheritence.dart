class teacher {
  void studing (){
    print("im studing");
  }
  void reading (){
    print("im reading");
  }
  void coding (){
    print("im coding");
  }
}
class student extends teacher {
  void writing (){
    print("im writing");
  }
}
class special extends teacher{
  @override
  void reading (){
    print("i can't read");
  }
  
  @override
  void coding (){
    super.coding();
    print("i can do better");
  }
}
void main (){
  student s1 = new student();
  s1.studing();
  s1.coding();
  s1.reading();
  special sp = new special();
  sp.reading();
  sp.coding();
}