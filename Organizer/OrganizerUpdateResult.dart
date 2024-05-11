import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class updateList extends StatefulWidget {
  const updateList({Key? key}) : super(key: key);

  @override
  State<updateList> createState() => _updateListState();
}

class _updateListState extends State<updateList> {
  //image picker
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
        title: Text('Update Result'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text('Event Name'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Event name',
                ),
              ),
            ),
            Row(
              children: [
                Text('Video Link'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Video Link',
                ),
              ),
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
                  hintText: 'Description',
                ),
              ),
            ),
            Row(
              children: [
                Text('Result'),
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
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 240, 240, 240),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
