import 'package:flutter/material.dart';

class editEvent extends StatefulWidget {
  const editEvent({super.key});

  @override
  State<editEvent> createState() => _editEventState();
}

class _editEventState extends State<editEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Event'),
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
          Row(
                children: [
                  Text('Location'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('location')),
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