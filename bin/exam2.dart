calculateSum(){
  List<int> numbers = [1,2,3,];
  var sum = (numbers.elementAt(0)+numbers.elementAt(1)+numbers.elementAt(2));
  return sum;
  }

void main (){
print("sum is: ${calculateSum()}");
}