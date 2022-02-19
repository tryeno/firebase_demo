import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/add_student_page.dart';
//import 'package:flutter_application_1/pages/list_student_page.dart';
import 'package:studentcrud/pages/add_student_page.dart';
import 'package:studentcrud/pages/list_student_page1.dart';
//import 'package:studentcrud/pages/list_student_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Flutter Firestore CRUD'),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddStudentPage(),
                ),
              )
            },
            child: const Text('Add', style: TextStyle(fontSize: 20.0)),
            style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
          )
        ],
      )),
      body: const ListStudentPage1(),
    );
  }
}
