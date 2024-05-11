import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddResult extends StatefulWidget {
  const AddResult({Key? key}) : super(key: key);

  @override
  State<AddResult> createState() => _AddResultState();
}

class _AddResultState extends State<AddResult> {
  String? selectedOption; // Variable to store the selected dropdown value
  File? _imageFile; // Variable to store the selected image file

  List<String> dropdownOptions = [
    'Oppana',
    'Mohiniyattam',
    'Kuchupudi',
    'Kolkali',
  ]; // List of dropdown options

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
        title: Text('Add Result'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                    value: selectedOption,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue;
                      });
                    },
                    items: dropdownOptions
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
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
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 240, 240, 240)),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
