import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class imagepicker extends StatefulWidget {
  const imagepicker({Key? key}) : super(key: key);
  @override
  State<imagepicker> createState() => _imagepickerState();
}
class _imagepickerState extends State<imagepicker> {
  var _img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child:
              Column(
                children:
                [
                Padding(
                  padding: const EdgeInsets.all(125.0),
                  child: ElevatedButton(onPressed: () {
                    gallery();
                  }, child: Text("Choose from gallery")),

                ),
                  Container(
                    child: _img!=null?Image.file(_img):Text("No image"),
                  )
                ]
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
}





