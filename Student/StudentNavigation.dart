import 'package:flutter/material.dart';
import 'package:flutter_application_1/Student/StudentEventDetail.dart';
import 'package:flutter_application_1/Student/StudentEventResult.dart';
import 'package:flutter_application_1/Student/StudentHome.dart';
import 'package:flutter_application_1/Student/StudentResult.dart';

class stdNav extends StatefulWidget {
  const stdNav({super.key});

  @override
  State<stdNav> createState() => _stdNavState();
}

class _stdNavState extends State<stdNav> {
  int _selectedIndex = 0;
  static const List<dynamic> _widgetoptions = [
    stdHome(),
    stdResult(),
   
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        bottomNavigationBar: BottomNavigationBar(
          items:  [
            BottomNavigationBarItem(
                icon:Icon(Icons.emoji_events),
                label: "Event",
                backgroundColor: Color(0xFF204563),),
            BottomNavigationBarItem(
                icon: Icon(Icons.reviews_outlined),
                label: "Result",
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