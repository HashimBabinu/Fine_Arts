import 'package:flutter/material.dart';

class eventList extends StatefulWidget {
  const eventList({super.key});

  @override
  State<eventList> createState() => _eventListState();
}

class _eventListState extends State<eventList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organizers List'),
         centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            ListView.builder(
              shrinkWrap: true, 
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(color: Color(0xFF558DBB),border: Border.all(
                    color: Colors.black12
                  ),borderRadius: BorderRadius.circular(5)
                  ),
                  child: ListTile(
                  
                    title: Text('Mohiniyattam'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Time:10:00'),
                      Text('Stage:3')],
                    ),
                    trailing: Icon(Icons.delete),
                   
                  ),
                );
              },
            
            ),
          ],
        ),
      ),
    );
  }
}