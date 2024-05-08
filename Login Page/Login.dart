import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
                child: Text('Login',
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
                  prefixIcon: Icon(Icons.person),
                  hintText: ('username')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  hintText: ('password')),
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
                  'Login',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 240, 240, 240)),
                ),
              ))
        ],
      ),
    );
  }
}
