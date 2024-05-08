import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/colors.dart';

class StdList extends StatefulWidget {
  const StdList({super.key});

  @override
  State<StdList> createState() => _StdListState();
}

class _StdListState extends State<StdList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
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