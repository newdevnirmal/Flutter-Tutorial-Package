import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/phpdisplaycrud.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class phpedit extends StatefulWidget {
  late final User_model data_user;
  phpedit({required this.data_user});
  @override
  _phpeditState createState() => _phpeditState();
}
class _phpeditState extends State<phpedit> {
  var _img;
  submit() async {
    final response = await http.post(
        Uri.parse("http://192.168.29.64/Crud_operations/file_update.php"),
        body: {
        });
    if (response.statusCode == 200) {
      print('Image Uploded');
      final snackBar = await SnackBar(
        content: const Text('Updated successfully!'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>  phpdisplaycrud()));
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      print("not");
      final snackBar = await SnackBar(
        content: const Text('Updation failed!'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            //Navigator.pop(context);
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Upddate",
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>  phpdisplaycrud()));
          },
          child: Icon(
            Icons.arrow_back_rounded, color: Colors.pink.shade300,
            size: 35, // add custom icons also
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(125.0),
                child: ElevatedButton(onPressed: () {
                  gallery();
                }, child: Text("Choose from gallery")),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: _img==null?Image.network(widget.data_user.file):Image.file(_img),
              ),
              Padding(
                padding: const EdgeInsets.all(125.0),
                child: ElevatedButton(onPressed: () {
                  SUBMIT();
                  // Navigator.pop(context);

                Navigator.push(context, MaterialPageRoute(builder: (context)=>phpdisplaycrud()));
                }, child: Text("SUBMIT")),
              ),
            ],
          ),
        ),
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
  Future SUBMIT() async{
    var ID=widget.data_user.id;
    var uri=Uri.parse("http://192.168.29.92/flutterdata/file_update.php?id=$ID");
    var request=http.MultipartRequest("POST",uri);
    var pic=await http.MultipartFile.fromPath("file",_img.path);
    print(_img);
    request.files.add(pic);
    request.send();
  }
}
