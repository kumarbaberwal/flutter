import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        centerTitle: true,
        title: const Text(
          'Image and Video Picker',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              child: Center(
                child: file == null
                    ? const Text('Image not Picked')
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Center(
                      child: Text(
                        "Image & Video Picked",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(20),
                  ));
                });
              },
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.green.shade400)),
              child: const Text(
                'Pick Image & Video',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile> photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Center(
                      child: Text(
                        "Images & Videos Picked",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                    ),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(20),
                  ));
                });
              },
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.green.shade400)),
              child: const Text(
                'Pick Images & Videos',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
