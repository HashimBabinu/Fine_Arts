import 'package:flutter/material.dart';

class assign extends StatefulWidget {
  const assign({super.key});

  @override
  State<assign> createState() => _assignState();
}

class _assignState extends State<assign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Assign'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(2),
                        
                        
                      ),),
               ),
              Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xFF558DBB),
                      
                    ),
                    child:Center(child:
                    Text('Kathakali',style: TextStyle(color: Colors.white),)),
                  ),

                 
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                        
                        
                      ),),
               ),
              Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF558DBB),
                      
                    ),
                    child:Center(child:
                    Text('Mohiniyattam',style: TextStyle(color: Colors.white),)),
                  ),                
            ],
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xFF204563),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 240, 240, 240)),
                    ),
                  )),
             ],
           )

             
        ],
      ),
    );
  }
}