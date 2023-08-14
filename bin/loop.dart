void main (){
  ///for loop
  for (var i=0; i<50; i++){
    print("dart"+i.toString()); //concit
  }

  ///for in loop in list
  List<String> names = ['A','B','C','D'];
  for (var OneName in names){
    print(OneName);
  }

  ///for in loop in set
  var alphabet  = {'AA','BB','CC','DD'};
  for (var onealpha in alphabet){
    print(onealpha);
  }

  ///for in loop in json list
  var productlist = [
    {'name':'milk', 'price':100},
    {'name':'chocolate', 'price':50},
    {'name':'buiscut', 'price':150},
    {'name':'vegetable', 'price':100},

  ];
  for (var oneproduct in productlist){
    var info = "product name is = ${oneproduct['name']} and product price is = ${oneproduct['price']} taka";
    print(info);
  }

  ///skip in loop
  for (var i =1; i<=10; i++){
    if (i==4)
      continue;
    print(i);
  }

  ///break in loop
  for(var i=1;i<=10;i++){
    if (i==8)
      break;
    print(i);
  }

}