
///normal function
/*
multiple (){
  var a =3, b=5;
  print(a*b);
}
void main (){
  multiple();
}

 */

///parametrized function
/*
multiple (int x, int y){
  print(x*y);
}
void main (){
  multiple(2, 5);
}

 */
///return function
int multiple (int x, int y){
  return (x*y);
}
void main (){
  int result = multiple(5, 10);
  print(result);
}