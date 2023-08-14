void main (){
  List<int> numbers = [1,3,6,7,8,10];
  for (int i=0; i<numbers.length; i++){
    if (numbers[i]%2!=0){
      numbers[0]<numbers[i];
      numbers[0] = numbers[i];
    }
  }
  print("Large of odd number: ${numbers[0]}");
}