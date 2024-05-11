import 'package:flutter/material.dart';


class eventParticipants extends StatefulWidget {
  const eventParticipants({super.key});

  @override
  State<eventParticipants> createState() => _eventParticipantsState();
}

class _eventParticipantsState extends State<eventParticipants>  with SingleTickerProviderStateMixin
{late TabController _tabController;

  @override
   void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Define number of tabs
    
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Event Participants'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Event'), // Define each tab with its label
            Tab(text: 'Result'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Content for the 'Confirmed' tab
          ListView.builder(
            shrinkWrap: true, 
            itemCount: 2,
            itemBuilder: (context, index) {
              
              return Container(
                
                decoration: BoxDecoration(color: Color(0xFF558DBB),border: Border.all(
                  color: Colors.white
                ),
                borderRadius: BorderRadius.circular(3),
          
                ),
                child: ListTile(
                
                  title: Center(child: Text('Mohiniyattam ',style: TextStyle(color: Colors.white),)),
                  
                ),
              );
            },
          
          ),
          // Content for the 'Pending' tab
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context,index) {
              return Container(
                decoration: BoxDecoration(color: Color(0xFF558DBB),border: Border.all(
                    color: Colors.white
                  ),
                  borderRadius: BorderRadius.circular(3) ),
                child: ListTile(
                  title: Center(child: Text('Kolkali',style: TextStyle(color: Colors.white),)),
                ),
              ) ;
            } ),
            
        ],
      ),
      floatingActionButton:_tabController.index==1?
      FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),
      backgroundColor: Colors.amber,)
      :null
    );
  }
}