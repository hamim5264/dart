void main (){
  List<String> students = ['hamim', 'lema', 'leja'];
  print(students);
  students.add('omi');
  print(students);
  students.addAll(['basori', 'nabil']);
  students.insert(0, 'rahim');
  students.insertAll(1, ['karim', 'sabbir']);
  print(students);
  print(students.first);
  print(students.last);
  print(students[3]);
  print(students.elementAt(3));
  students.removeAt(0);
  print(students);
  students.remove('basori');
  print(students);
  students.clear();
  print(students);
  print(students.length);


}