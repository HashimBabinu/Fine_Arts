import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class stdEventResult extends StatefulWidget {
  const stdEventResult({super.key});

  @override
  State<stdEventResult> createState() => _stdEventResultState();
}

class _stdEventResultState extends State<stdEventResult> {
   File? _imageFile; // Variable to store the selected image file

  Future<void> _pickImage() async {//image picker
    try {
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Mohiniyattam',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
        
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Date:'),
              Text('17/03/2000',style: TextStyle(color: Colors.grey),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Stage No:'),
              Text('02',style: TextStyle(color: Colors.grey),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Time:'),
              Text('9:00',style: TextStyle(color: Colors.grey),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Location:'),
              Text('Ground',style: TextStyle(color: Colors.grey),)
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Result:',style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
              _imageFile != null//image picker
                  ? Image.file(
                      _imageFile!,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      height: 200,
                      width: 200,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text('No Image Selected'),
                      ),
                    ),
              SizedBox(height: 20),
              TextButton(
                onPressed: _pickImage,
                child: Text(
                  'Select Image',
                  style: TextStyle(color: Colors.black),
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
                  child: Center(child: Text('Appeal',style: TextStyle(color: const Color.fromARGB(255, 244, 244, 244)),)),
                  ),
                  ),
          ],
        ),
      )
    );
  }
}