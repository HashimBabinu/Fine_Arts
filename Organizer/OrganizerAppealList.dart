import 'package:flutter/material.dart';

class appealList extends StatefulWidget {
  const appealList({super.key});

  @override
  State<appealList> createState() => _appealListState();
}

class _appealListState extends State<appealList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appeal List'),
         centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            ListView.builder(
              shrinkWrap: true, 
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  
                  decoration: BoxDecoration(color: Color.fromARGB(255, 247, 247, 247),border: Border.all(
                    color: Colors.black12
                  ),borderRadius: BorderRadius.circular(5)
                  ),
                  child: ListTile(
                  
                    title: Text('Name '),
                    subtitle: Text('Id Number '),
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