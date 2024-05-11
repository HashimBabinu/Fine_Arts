import 'package:flutter/material.dart';

class orgnzrdtl extends StatefulWidget {
  const orgnzrdtl({super.key});

  @override
  State<orgnzrdtl> createState() => _orgnzrdtlState();
}

class _orgnzrdtlState extends State<orgnzrdtl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Organizer Deatil'),
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
            children: [
              Text('Id Number'),
            ],
          ),
          Container(
            height: 30,
            width: 500,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(),
              borderRadius: BorderRadius.circular(2),
              
            ),
            child:Text('0000',style: TextStyle(color: Colors.grey)),
          ),
           Row(
            children: [
              Text('Phone Number'),
            ],
          ),
          Container(
            height: 30,
            width: 500,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(),
              borderRadius: BorderRadius.circular(2),
              
            ),
            child:Text('92736484647',style: TextStyle(color: Colors.grey)),
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
        
      )

    );
  }
}