import 'package:flutter/material.dart';

class addEvent extends StatefulWidget {
  const addEvent({super.key});

  @override
  State<addEvent> createState() => _addEventState();
}

class _addEventState extends State<addEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Row(
                children: [
                  Text('Name'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('name')),
            ),
          ),
           Row(
                children: [
                  Text('Date'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('date')),
            ),
          ),
           Row(
                children: [
                  Text('Stage No'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('stage no')),
            ),
          ),
           Row(
                children: [
                  Text('Time'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('time')),
            ),
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xFF204563),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 240, 240, 240)),
                    ),
                  )),
             ],
           )
        ],
      ),
    );
  }
}