void main (){
  List<int> marks = [85, 92, 78, 65, 88, 72];
  var sumOfGrade=0;
  for(var i=0; i<marks.length; i++){
    sumOfGrade = sumOfGrade+marks[i];
  }
  var avgGrade = sumOfGrade/marks.length;
  print("Student's average grade: ${avgGrade.toStringAsFixed(0)}");
  print("Rounded average: ${avgGrade.roundToDouble().toStringAsFixed(0)}");
  if (avgGrade>=70){
    print("Passed");
  }else{
    print("Failed");
  }
}