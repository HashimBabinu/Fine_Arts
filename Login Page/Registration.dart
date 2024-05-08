import 'package:flutter/material.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('Registration',
                    style: TextStyle(
                        color: Color(0xFF204563),
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  labelText: ('Name')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  labelText: ('Phone No')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  
                  labelText: ('E mail')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                 
                  labelText: ('Id Number')),
            ),
          ),
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
              ))
        ],
      ),
    );
  }
}
  