import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/create_controller.dart';

class CreateView extends GetView<CreateController> {
  final ImagePicker _picker = ImagePicker();
  CreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'Tambah Item',
          style: TextStyle(color: Colors.grey[300]),
        ),
        backgroundColor: Colors.grey[700],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Nama Item',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Harga',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder()),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => controller.imagePath.value == ''
                  ? const Text(
                      'Select image from Gallery',
                      style: TextStyle(fontSize: 20),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage:
                          FileImage(File(controller.imagePath.value)))),
              IconButton(
                  onPressed: () {
                    _picker.pickImage(source: ImageSource.gallery);
                  },
                  icon: Icon(Icons.image))
            ],
          )
        ],
      ),
    );
  }
}
