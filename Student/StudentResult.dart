import 'package:flutter/material.dart';

class stdResult extends StatefulWidget {
  const stdResult({super.key});

  @override
  State<stdResult> createState() => _stdResultState();
}

class _stdResultState extends State<stdResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result',style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            ListView.builder(
              shrinkWrap: true, 
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  
                  decoration: BoxDecoration(color: Color.fromARGB(255, 247, 247, 247),border: Border.all(
                    color: Color.fromARGB(31, 28, 111, 235)
                  ),borderRadius: BorderRadius.circular(5)
                  ),
                  child: ListTile(
                  
                    title: Text('Oppana'),
                    
                    leading: Icon(Icons.image_outlined),
                    
                   
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