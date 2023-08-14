class Myclass {
  int a = 10;
  int b = 20;
  addTwoNumbers (){
    var res = this.a+this.b;
    print(res);
  }
  myFunction (){
    this.addTwoNumbers();
  }
}