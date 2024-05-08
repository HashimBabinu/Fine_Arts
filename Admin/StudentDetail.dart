import 'package:flutter/material.dart';

class stdDetail extends StatefulWidget {
  const stdDetail({super.key});

  @override
  State<stdDetail> createState() => _stdDetailState();
}

class _stdDetailState extends State<stdDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Deatil'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Id Number:'),
            Text('00000')
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Department:'),
            Text('Computer Science')
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Phone Number:'),
            Text('College')
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Location:'),
            Text('College')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle, 
                border: Border.all(),
                borderRadius: BorderRadius.circular(2),
                color: Colors.red
              ),
               child:Text('Accept')
            ),
           Padding(padding: EdgeInsets.all(40)),
            Container(
                           
              decoration: BoxDecoration(
                shape: BoxShape.rectangle, 
                border: Border.all(),
                borderRadius: BorderRadius.circular(2),
                color:Colors.green
              ),
               child:Text('Reject')
            ),
          
          ],
        )
        
      ],
     ),
    );
  }
}