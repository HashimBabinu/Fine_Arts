import 'package:flutter/material.dart';
import 'package:flutter_application_1/Admin/AdminAddEvent.dart';
import 'package:flutter_application_1/Admin/AdminAssign.dart';
import 'package:flutter_application_1/Admin/AdminOganizerAssign.dart';
import 'package:flutter_application_1/Admin/EventList.dart';
import 'package:flutter_application_1/Admin/OrganizerDetail.dart';
import 'package:flutter_application_1/Admin/OrganizerList.dart';
import 'package:flutter_application_1/Admin/StudentDetail.dart';
import 'package:flutter_application_1/Admin/StudentList.dart';
import 'package:flutter_application_1/Login%20Page/Login.dart';
import 'package:flutter_application_1/Login%20Page/Registration.dart';
import 'package:flutter_application_1/Organizer/OeganizerAddResult.dart';
import 'package:flutter_application_1/Organizer/OrganizerAppeal.dart';
import 'package:flutter_application_1/Organizer/OrganizerAppealDetail.dart';
import 'package:flutter_application_1/Organizer/OrganizerAppealList.dart';

import 'package:flutter_application_1/Organizer/OrganizerAssign.dart';
import 'package:flutter_application_1/Organizer/OrganizerEditEvent.dart';
import 'package:flutter_application_1/Organizer/OrganizerEventDetail.dart';
import 'package:flutter_application_1/Organizer/OrganizerEventParticipants.dart';
import 'package:flutter_application_1/Organizer/OrganizerParticipantList.dart';
import 'package:flutter_application_1/Organizer/OrganizerUpdateResult.dart';
import 'package:flutter_application_1/Student/StudentApplyAppeal.dart';
import 'package:flutter_application_1/Student/StudentEventApply.dart';
import 'package:flutter_application_1/Student/StudentEventDetail.dart';
import 'package:flutter_application_1/Student/StudentEventResult.dart';
import 'package:flutter_application_1/Student/StudentHome.dart';
import 'package:flutter_application_1/Student/StudentResult.dart';

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
      home: stdApplyAppeal(),
    );
  }
}

