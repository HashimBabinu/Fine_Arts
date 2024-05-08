import 'package:flutter/material.dart';

class organizerList extends StatefulWidget {
  const organizerList({super.key});

  @override
  State<organizerList> createState() => _organizerListState();
}

class _organizerListState extends State<organizerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Organizers List'),
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
                    leading: Icon(Icons.person),
                   
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