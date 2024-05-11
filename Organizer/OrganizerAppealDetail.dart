import 'package:flutter/material.dart';

class appealDetail extends StatefulWidget {
  const appealDetail({super.key});

  @override
  State<appealDetail> createState() => _appealDetailState();
}

class _appealDetailState extends State<appealDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appeal Detail'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Row(
                children: [
                  Text('Event Name'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('event name')),
            ),
          ),
           Row(
                children: [
                  Text('Video Link'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('Video Link')),
            ),
          ),
           Row(
                children: [
                  Text('Description'),
                ],
              ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: null,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  hintText: ('Description')),
            ),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
           
            ElevatedButton(
  onPressed: () {
   
  },
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 6, 129, 32)), 
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), 
      ),

    ),
  ),
  child: Text('Accept'),
),
SizedBox(width: 50,),

 ElevatedButton(
  onPressed: () {
   
  },
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 212, 37, 6)), 
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), 
      ),


    ),
  ),
  child: Text('Reject'),
)


          
          ],
        ),
           
        ],
      ),
      
    );
  }
}