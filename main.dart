import 'package:flutter/material.dart';
import 'package:flutter_application_1/Admin/EventList.dart';
import 'package:flutter_application_1/Admin/OrganizerList.dart';
import 'package:flutter_application_1/Admin/StudentDetail.dart';
import 'package:flutter_application_1/Admin/StudentList.dart';
import 'package:flutter_application_1/Login%20Page/Login.dart';
import 'package:flutter_application_1/Login%20Page/Registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: stdDetail(),
    );
  }
}

