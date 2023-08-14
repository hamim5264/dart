void main (){
  var sum = 0;
List<int> numbers = [1,5,8,12,7,6,10,3];
//finding sum of even numbers
for (int i = 0; i<numbers.length; i++){
  if(numbers[i]%2==0){
    sum = sum+numbers[i];
  }
}
//finding largest odd number
for (int i=0; i<numbers.length; i++){
  if(numbers[i]%2!=0){
    var large = numbers[0];
    if(numbers[0]<numbers[i]){
      numbers[0] = numbers[i];
    }
  }
}
//list reversed
var rev = numbers.reversed;
//printing sum, largest number and reverse numbers
print("Sum of even numbers: ${sum}");
print("Largest odd number: ${numbers[0]}");
print("Reversed list: ${rev}");
}

