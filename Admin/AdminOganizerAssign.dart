import 'package:flutter/material.dart';

class orgnzassgn extends StatefulWidget {
  const orgnzassgn({super.key});

  @override
  State<orgnzassgn> createState() => _orgnzassgnState();
}

class _orgnzassgnState extends State<orgnzassgn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organizer Deatil'),
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
         Center(child: Text('Name')),
         Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [
              Text('Id Number'),
            ],
          ),
          Container(
            height: 30,
            width: 500,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(),
              borderRadius: BorderRadius.circular(2),
              
            ),
            child:Text('0000',style: TextStyle(color: Colors.grey)),
          ),
           Row(
            children: [
              Text('Phone Number'),
            ],
          ),
          Container(
            height: 30,
            width: 500,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(),
              borderRadius: BorderRadius.circular(2),
              
            ),
            child:Text('92736484647',style: TextStyle(color: Colors.grey)),
          ),
          Row(
            children: [
              Text('Assign'),
            ],
          ),
          Container(
            height: 60,
            width: 500,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(),
              borderRadius: BorderRadius.circular(2),
              
            ),
            child:Text('Mohiniyattam',style: TextStyle(color: Colors.grey)),
          ),
          Padding(padding: EdgeInsets.all(10)),
          
          Container(
              width: 200,
              height: 30,
              decoration: BoxDecoration(
                  color: Color(0xFF204563),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  'Assign',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 240, 240, 240)),
                ),
              ))
        ]
      ),
    );
  }
}