import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? image;
  final imagePicker = ImagePicker();

  Future  getImage()async
  {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if(pickedImage != null){
      setState((){
        image = File(pickedImage.path);
      });
    }else{

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Picker',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: getImage,
                child: const Text(
                  'Upload Image',
                ),
              ),
            ),
            image == null ? const Text('Image Not Selected',) : Image.file(image!),
          ],
        ),
      ),
    );
  }
}
