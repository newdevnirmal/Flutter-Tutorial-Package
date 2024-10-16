import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/phpdisplaycrud.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class php extends StatefulWidget {
  const php({Key? key}) : super(key: key);
  @override
  State<php> createState() => _phpState();
}
class _phpState extends State<php> {
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
                ),
                ElevatedButton(onPressed: () {
                  submit();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  phpdisplaycrud()));
                }, child: Text("Submit")),
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
  Future submit() async{
    var uri=Uri.parse("http://192.168.29.92/flutterdata/file_upload.php");
    var request=http.MultipartRequest("POST",uri);
    // request.fields['name']="";
    var pic=await http.MultipartFile.fromPath("file",_img.path);
    print(_img);
    request.files.add(pic);
    request.send();
  }
}





