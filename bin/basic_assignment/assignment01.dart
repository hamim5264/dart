void main (){
  int english = 75;


  int bengali = 82;


  int math = 90;


  int science = 68;


  int history = 77;




  // Calculate and print grades for each subject


  printGrade('English', english);


  printGrade('Bengali', bengali);


  printGrade('Math', math);


  printGrade('Science', science);


  printGrade('History', history);




  // Calculate and print average mark


  double averageMark = (english + bengali + math + science + history) / 5;


  print('\nAverage Mark: $averageMark');




  // Calculate and print total mark


  int totalMark = english + bengali + math + science + history;


  print('Total Mark: $totalMark');


}




void printGrade(String subject, int marks) {


  String grade;


  if (marks >= 80) {


    grade = 'A+';


  } else if (marks >= 70) {


    grade = 'A';


  } else if (marks >= 60) {


    grade = 'B';


  } else if (marks >= 50) {


    grade = 'C';


  } else {


    grade = 'D';


  }




  print('$subject: $grade');
}