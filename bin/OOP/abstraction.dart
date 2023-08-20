abstract class person {
  void talking ();
}
abstract class manager {
  void conding ();
}
abstract class ceo {
  double salary ();
}
class employee extends ceo {
  @override
  double salary() {
    return 26445.4;

  }
}
class officer implements person, manager{
  @override
  void conding() {
    print("i can do coding");
  }

  @override
  void talking() {
    print("i can talk");
  }

}
void main (){
employee leon =  employee();
print(leon.salary());
officer hamim =  officer();
hamim.talking();
hamim.conding();

///polymorphism
  person basori  = officer();
  basori.talking();
  manager lija = officer();
  lija.conding();
}