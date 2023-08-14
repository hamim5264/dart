///Map = key:value pair (dacumentation comment)
void main (){
 Map<int, String> students = {
   1:'hamim',
   2: 'lema',
   3: 'leja',
 };
 print(students);
 print(students[3]);
 Map<String, int> age = {};
 age ['basori'] = 21;
 age ['hamim'] = 20;
 print(age);
 print(age.isEmpty);
 print(age.isNotEmpty);
 age.clear();
 print(age);
}

