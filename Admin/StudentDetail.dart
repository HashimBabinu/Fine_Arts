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
            Text('00000',style: TextStyle(color: Colors.grey),)
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Department:'),
            Text('Computer Science',style: TextStyle(color: Colors.grey),)
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Phone Number:'),
            Text('College',style: TextStyle(color: Colors.grey),)
          ],
        ),
        Padding(padding: EdgeInsets.all(8)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Location:'),
            Text('College',style: TextStyle(color: Colors.grey),)
          ],
        ),
      
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
           
            ElevatedButton(
  onPressed: () {
   
  },
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 6, 129, 32)), 
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), 
      ),

    ),
  ),
  child: Text('Accept'),
),
SizedBox(width: 50,),

 ElevatedButton(
  onPressed: () {
   
  },
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 212, 37, 6)), 
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), 
      ),


    ),
  ),
  child: Text('Reject'),
)


          
          ],
        )
        
      ],
     ),
    );
  }
}