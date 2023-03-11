/*
Assignment
  1- define class called Employee with the following attributes:
  - imageUrl as string
  - name as String
  - salary as double
  - sons as List of Son class (name, age, isMale)

2- create list of employees that contains 5 employees with dummy data
3- convert the list of employees to list pf widgets based on the image in the board
  */

import 'dart:html';

import 'package:flutter/material.dart';
import 'Employee.dart';
import 'Son.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Employee> employees = [
    Employee(
        imageUrl: "Assets/Photos/man1.png",
        name: "khaled",
        salary: 2800.0,
        sons: [
          Son(name: "Ahmad", age: 14, isMale: true),
          Son(name: "Rania", age: 8, isMale: false),
          Son(name: "Noor", age: 12, isMale: false),
        ]),
    Employee(
        imageUrl: "Assets/Photos/man2.png",
        name: "Mohammed",
        salary: 2300.0,
        sons: [
          Son(name: "Mahmoud", age: 13, isMale: true),
          Son(name: "Hiba", age: 4, isMale: false),
        ]),
    Employee(
        imageUrl: "Assets/Photos/girl1.png",
        name: "Lena",
        salary: 2720.0,
        sons: [
          Son(name: "Ahmad", age: 10, isMale: true),
          Son(name: "Lila", age: 7, isMale: false),
        ]),
    Employee(
        imageUrl: "Assets/Photos/man3.png",
        name: "Jamal",
        salary: 1950.0,
        sons: [
          Son(name: "marwan", age: 22, isMale: true),
          Son(name: "Aya", age: 15, isMale: false),
        ]),
    Employee(
        imageUrl: "Assets/Photos/girl2.png",
        name: "Assel",
        salary: 2200.0,
        sons: [
          Son(name: "Ahmad", age: 18, isMale: true),
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(20),
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(employees[index].imageUrl),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "Name: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: employees[index].name.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal))
                                ]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "Salary: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: "${employees[index].salary.toString()}\$",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal))
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(
                    height: 20,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Sons",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: employees[index].sons.length,
                      itemBuilder: (context, index2) {
                        return Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                RichText(
                                  text: TextSpan(
                                      text: "Name: ",
                                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),
                                      children: [
                                        TextSpan(
                                            text: employees[index].sons[index2].name.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,color: Colors.black))
                                      ]),
                                ),

                                RichText(
                                  text: TextSpan(
                                      text: "Age: ",
                                      style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.grey[700]),
                                      children: [
                                        TextSpan(
                                            text: employees[index].sons[index2].age.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,color: Colors.black))
                                      ]),
                                ),

                                RichText(
                                  text: TextSpan(
                                      text: "Gender: ",
                                      style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.grey[700]),
                                      children: [
                                        TextSpan(
                                            text: "${(employees[index].sons[index2].isMale) ? "Male" : "Female"} ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,color: Colors.black))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          );
        });
  }
}
