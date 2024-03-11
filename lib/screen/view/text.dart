import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

class TextML extends StatefulWidget {
  const TextML({super.key});

  @override
  State<TextML> createState() => _TextMLState();
}

class _TextMLState extends State<TextML> {
  File? image;
  String text = '';

  Future pickImage(ImageSource source) async {
    try {
      XFile? pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage == null) return;

      setState(() {
        // Assuming you want to use the pickedImage here,
        // you can store it in another variable like 'selectedImage'.
        image = File(pickedImage.path);
      });
    } catch (e) {
      print(e);
    }
  }

  Future textMl(File img) async {
    final textMl = TextRecognizer(script: TextRecognitionScript.latin);
    final inputImage = InputImage.fromFilePath(img.path);
    final RecognizedText recognizedText = await textMl.processImage(inputImage);
    setState(() {
      text = recognizedText.text;
      print(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ML"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.grey,
                child: Center(
                  child: image == null
                      ? const Icon(Icons.add_a_photo)
                      : Image.file(image!),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    pickImage(ImageSource.gallery).then((value) {
                      textMl(image!);
                    });
                  },
                  child: const Text("صوره"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SelectableText(text,style: const TextStyle(fontSize: 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
