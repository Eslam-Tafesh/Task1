// - imageUrl as string
// - name as String
// - salary as double
// - sons as List of Son class (name, age, isMale)


import 'Son.dart';

class Employee {
  String imageUrl;
  String name;
  double salary;
  List <Son> sons;

  Employee({required this.imageUrl, required this.name, required this.salary,required this.sons});

}