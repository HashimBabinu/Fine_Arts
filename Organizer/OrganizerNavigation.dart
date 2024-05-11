import 'package:flutter/material.dart';
import 'package:flutter_application_1/Organizer/OrganizerAppeal.dart';
import 'package:flutter_application_1/Organizer/OrganizerAssign.dart';
import 'package:flutter_application_1/Organizer/OrganizerEventParticipants.dart';

class organizerNav extends StatefulWidget {
  const organizerNav({super.key});

  @override
  State<organizerNav> createState() => _organizerNavState();
}

class _organizerNavState extends State<organizerNav> {
  int _selectedIndex = 0;
  static const List<dynamic> _widgetoptions = [
    orgAssign(),
    eventParticipants(),
    appeal(),
   
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        bottomNavigationBar: BottomNavigationBar(
          items:  [
            BottomNavigationBarItem(
                icon:Icon(Icons.assignment_rounded),
                label: "Assigned",
                backgroundColor: Color(0xFF204563),),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events_rounded),
                label: "Event",
                backgroundColor: Color(0xFF204563),),
            BottomNavigationBarItem(
                icon: Icon(Icons.app_settings_alt),
                label: "Appeal",
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