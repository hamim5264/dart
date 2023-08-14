void main (){
  List<double> itemPrice = [12.99, 8.75, 21.50, 5.00];
  double sumOfItem =0;
  for (var i=0; i<itemPrice.length; i++){
    sumOfItem = sumOfItem + itemPrice[i];
  }
  double tax = (sumOfItem*8);
  double initialPrice = (tax/100);
  double totalPrice = (sumOfItem+initialPrice);
  print("Total Cost: \$${totalPrice.toStringAsFixed(2)}");
}