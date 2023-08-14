void main (){
  Map<String,int> information ={
'hamim':1,
  'lima':2,
'lija':3,
  };
  information['basori'] = 4; //element addition
  information.addAll({'karim':5, 'rahim':6});
  print(information);
  information.remove('hamim');
  print(information);
  information.clear();
  print(information);
}