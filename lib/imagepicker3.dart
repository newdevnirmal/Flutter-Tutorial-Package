import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class imagepicker3 extends StatefulWidget {
  const imagepicker3({Key? key}) : super(key: key);
  @override
  State<imagepicker3> createState() => _imagepicker3State();
}
class _imagepicker3State extends State<imagepicker3> {
  var _img;
  var _img2;
  var _img3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child:
          Container(
            color: Colors.cyanAccent,
            child: Column(
                children:
                [
                  Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 10.0,color: Colors.red)
                          ),
                          child: _img!=null?Image.file(_img):Text("No image"),
                        ),
                        ElevatedButton(onPressed: () {
                          gallery();
                        }, child: Text("Choose from gallery")),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 10.0,color: Colors.red)
                          ),
                          child: _img2!=null?Image.file(_img2):Text("No image"),
                        ),
                        ElevatedButton(onPressed: () {
                          gallery2();
                        }, child: Text("Choose from gallery")),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 10.0,color: Colors.red)
                          ),
                          child: _img3!=null?Image.file(_img3):Text("No image"),
                        ),
                        ElevatedButton(onPressed: () {
                          gallery3();
                        }, child: Text("Choose from gallery")),
                      ],
                    ),
                  ),
                ]
            ),
          )
      ),
    );
  }
  Future gallery() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery);
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
  Future gallery2() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery);
      if (image == null) return;
      final imagetemp2 = File(image.path);
      setState(() {
        this._img2 = imagetemp2;
      });
      print("**************");
      print(_img2);
    } on PlatformException catch (e) {
      print("Failed");
    }
  }
  Future gallery3() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery);
      if (image == null) return;
      final imagetemp3 = File(image.path);
      setState(() {
        this._img3 = imagetemp3;
      });
      print("**************");
      print(_img3);
    } on PlatformException catch (e) {
      print("Failed");
    }
  }
}





