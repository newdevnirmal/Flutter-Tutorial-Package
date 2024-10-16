import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class imagepicker2 extends StatefulWidget {
  const imagepicker2({Key? key}) : super(key: key);
  @override
  State<imagepicker2> createState() => _imagepicker2State();
}
class _imagepicker2State extends State<imagepicker2> {
  var _img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child:
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              height: 600,
              width: 580,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(width: 10.0,color: Colors.red)
              ),
              child: Column(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        height: 450,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(width: 10.0,color: Colors.purple)
                        ),
                        child: _img!=null?Image.file(_img):Text("No image"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: () {
                        gallery();
                      }, child: Text("Choose from camera")),
                    ),
                  ]
              ),
            ),
          )
      ),
    );
  }
  Future gallery() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.camera);
      if (image == null) return;
      final imagetemp = File(image.path);
      setState(() {
        this._img = imagetemp;
      });
      print("**************");
      print(_img);
    } on PlatformException catch (e) {
      print("Failed");
    }
  }
}




