import 'package:flutter/material.dart';

class stdEventDetail extends StatefulWidget {
  const stdEventDetail({super.key});

  @override
  State<stdEventDetail> createState() => _stdEventDetailState();
}

class _stdEventDetailState extends State<stdEventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Deatil',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Center(
           child: Container(
            height: 100,
                    width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                         Icon(Icons.person),
                      ),
                    ),
                    
         ),
         Center(child: Text('Mohiniyattam')),
         Padding(padding: EdgeInsets.all(10)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Date:'),
            Text('17/03/2000',style: TextStyle(color: Colors.grey),)
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Stage No:'),
            Text('02',style: TextStyle(color: Colors.grey),)
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time:'),
            Text('9:00',style: TextStyle(color: Colors.grey),)
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Location:'),
            Text('College',style: TextStyle(color: Colors.grey),)
          ],
        ),
      Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 200,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xFF204563),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text('Apply',style: TextStyle(color: const Color.fromARGB(255, 244, 244, 244)),)),
                ),
                ),
        
      ],
     ),
    );
  }
}