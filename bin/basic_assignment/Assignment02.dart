findLargestNumber(){
  List<int> number = [1,2,3,];
  if (number.elementAt(0) > number.elementAt(1) && number.elementAt(0) > number.elementAt(2)){
    print("large number: 1");
  }
  else if (number.elementAt(1)> number.elementAt(0) && number.elementAt(1) > number.elementAt(2)){
    print("large number: 2");
  }
  else {
    print("large number: 3");
  }
}
void main (){
  findLargestNumber();
}