import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Admin/EventList.dart';
import 'package:flutter_application_1/Admin/OrganizerList.dart';
import 'package:flutter_application_1/Admin/StudentList.dart';
import 'package:flutter_application_1/common/colors.dart';

class AdminNavigation extends StatefulWidget {
  const AdminNavigation({super.key});

  @override
  State<AdminNavigation> createState() => _AdminNavigationState();
}

class _AdminNavigationState extends State<AdminNavigation> {
   int _selectedIndex = 0;
  static const List<dynamic> _widgetoptions = [
    StdList(),
    organizerList(),
    eventList()

    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        bottomNavigationBar: BottomNavigationBar(
          items:  [
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                label: "Student",
                backgroundColor: Color(0xFF204563),),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups),
                label: "Organizer",
                backgroundColor: Color(0xFF204563),),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events_rounded),
                label: "Event",
                backgroundColor: Color(0xFF204563),),
            
          ],
          backgroundColor: Color(0xFF204563),
          selectedIconTheme: IconThemeData(
    color: Colors.amber, // Set your desired color for the selected icon
  ),
          iconSize: 25,
          // selectedFontSize: 30,
          //  showSelectedLabels: false,
          // showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: Center(
          child:_widgetoptions.elementAt(_selectedIndex),
          
        ),
         
        );
  }
}