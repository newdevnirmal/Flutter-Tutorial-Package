import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class imageform extends StatefulWidget {
  const imageform({Key? key}) : super(key: key);
  @override
  State<imageform> createState() => _imageformState();
}
TextEditingController name=new TextEditingController();
TextEditingController Email=new TextEditingController();
TextEditingController Adhaar=new TextEditingController();
TextEditingController Phone=new TextEditingController();
class _imageformState extends State<imageform> {
  var _img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page",style:TextStyle(fontSize: 25)),
        leading: Icon(Icons.assignment_rounded),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.deepOrangeAccent)
              ),
              child: Column(
                children: [
                  Text("Sign Up",style:TextStyle(color: Colors.teal.shade800,fontSize: 40,fontWeight: FontWeight.w800),),
                  Column(
                      children:
                      [
                        Container(
                          child: _img!=null?Image.file(_img):Text("No image"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30.0),
                          child: ElevatedButton(onPressed: () {
                            gallery();
                          }, child: Text("Choose from gallery")),
                        ),
                      ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.contact_page,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: name,
                            decoration: InputDecoration(
                                hintText: "Enter Name",
                                labelText: "Name"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.email,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: Email,
                            decoration: InputDecoration(
                                hintText: "Enter Email",
                                labelText: "Email"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.perm_identity,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: Adhaar,
                            decoration: InputDecoration(
                                hintText: "Enter Adhaar Number",
                                labelText: "Adhaar"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.phone,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: Phone,
                            decoration: InputDecoration(
                                hintText: "Enter Phone Number",
                                labelText: "Phone"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.deepOrange)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 120), // Text(),Text(),Text(),Text(),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      setState(() {
                      });
                    }, child:Text("SUBMIT")), Text(""),
                  ],
                ),
              ),
            ),
            Text(name.text,),
            Text(Email.text),Text(Adhaar.text),Text(Adhaar.text),
          ],
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
}


