import 'package:flutter/material.dart';

class stdApplyAppeal extends StatefulWidget {
  const stdApplyAppeal({super.key});

  @override
  State<stdApplyAppeal> createState() => _stdApplyAppealState();
}

class _stdApplyAppealState extends State<stdApplyAppeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Appeal ',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
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
                    Text(' Name'),
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
                    Text('Department'),
                  ],
                ),
               Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    
                    hintText: ('Department')),
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
      ),
      
    );
  }
}