void main (){
  ///Set_demo
  var CityName =<String> {'Dhaka', 'Rajshahi', 'Khulna'};
  CityName.add("khulna");
  print(CityName);
  CityName.addAll({'Barishal','Rangpur'});
  print(CityName);
  print(CityName.elementAt(5));
  print(CityName.hashCode);
  CityName.clear();
  print(CityName);

} 