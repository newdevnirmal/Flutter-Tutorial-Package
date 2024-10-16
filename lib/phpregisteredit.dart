import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/phpregisterdisplay.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
class regedit extends StatefulWidget {
  final User_model data_user;
  regedit({required this.data_user});
  @override
  _regeditState createState() => _regeditState();
}
class _regeditState extends State<regedit> {
  var _img;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    namecontroller = TextEditingController(text: widget.data_user.name);
    phonecontroller = TextEditingController(text: widget.data_user.phone);
    emailcontroller = TextEditingController(text: widget.data_user.email);
    passwordcontroller = TextEditingController(text: widget.data_user.password);
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
          "EDIT",
        ),
        backgroundColor: Colors.greenAccent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded, color: Colors.pink.shade300,
            size: 35, // add custom icons also
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: ElevatedButton(onPressed: () {
                          gallery();
                        }, child: Text("Choose from gallery")),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        child: _img == null ? Image.network(
                            widget.data_user.file) : Image.file(_img),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                        child: TextFormField(
                          controller: namecontroller,
                          decoration: InputDecoration(
                            labelText: "Enter Text",
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                        child: TextFormField(
                          controller: phonecontroller,
                          decoration: InputDecoration(
                            labelText: "Enter Phone Number",
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                        child: TextFormField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            labelText: "Enter Email",
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                        child: TextFormField(
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            labelText: "Enter password",
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.lightBlueAccent.shade200,
                      padding: EdgeInsets.only(
                          left: 100, right: 100, top: 20, bottom: 20),
                    ),
                    onPressed: () {
                      submit();
                      namecontroller.clear();
                      phonecontroller.clear();
                      emailcontroller.clear();
                      passwordcontroller.clear();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => phpregisterdisplay()));
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
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
  Future submit() async {
    var ID=widget.data_user.id;
    var uri=Uri.parse("http://192.168.29.92/flutterdata/register_update.php?id=$ID");
    var request=http.MultipartRequest("POST",uri);
    request.fields['name']=namecontroller.text;
    request.fields['phone']=phonecontroller.text;
    request.fields['email']=emailcontroller.text;
    request.fields['password']=passwordcontroller.text;
    var pic=await http.MultipartFile.fromPath("file",_img.path);
    print(_img);
    request.files.add(pic);
    request.send();
  }
}
