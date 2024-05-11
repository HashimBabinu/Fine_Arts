import 'package:flutter/material.dart';

class stdHome extends StatefulWidget {
  const stdHome({super.key});

  @override
  State<stdHome> createState() => _stdHomeState();
}

class _stdHomeState extends State<stdHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event',style: TextStyle(fontWeight: FontWeight.bold),),
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
                    
                  
                    title: Text('Mohiniyattam'),
                    
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