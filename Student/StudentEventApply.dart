import 'package:flutter/material.dart';

class stdEventApply extends StatefulWidget {
  const stdEventApply({super.key});

  @override
  State<stdEventApply> createState() => _stdEventApplyState();
}

class _stdEventApplyState extends State<stdEventApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
     body: SingleChildScrollView(
       child: Column(
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
           Row(
             children: [
               Text('Name :'),
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
             Row(
             children: [
               Text('Phone No :'),
             ],
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    
                    labelText: ('Phone No')),
              ),
            ),
             Row(
             children: [
               Text('Id No :'),
             ],
           ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                   
                    labelText: ('Id Number')),
              ),
            ),
             Row(
             children: [
               Text('Department :'),
             ],
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                   
                    labelText: ('Department')),
              ),
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
                  child: Center(child: Text('Submit',style: TextStyle(color: const Color.fromARGB(255, 244, 244, 244)),)),
                  ),
                  ),
           ],
       ),
     ),
    );
  }
}