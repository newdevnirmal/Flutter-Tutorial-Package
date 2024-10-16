import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/phplogin/phplogin.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
class phpregister2 extends StatefulWidget {
  const phpregister2({Key? key}) : super(key: key);
  @override
  State<phpregister2> createState() => _phpregister2State();
}
class _phpregister2State extends State<phpregister2> {
  var _img;
  TextEditingController name1controller = TextEditingController();
  TextEditingController name2controller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  late bool status;
  late String message;
  @override
  void initState() {
    name1controller = TextEditingController();
    name2controller = TextEditingController();
    phonecontroller= TextEditingController();
    emailcontroller=TextEditingController();
    passwordcontroller=TextEditingController();
    status = false;
    message = "";
    super.initState();
  }
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER"),
        backgroundColor: Colors.orange.shade600,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:NetworkImage("https://r1.ilikewallpaper.net/iphone-wallpapers/download/5407/Orange-Gradient-iphone-wallpaper-ilikewallpaper_com.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:_formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.only(
                              left: 60, right: 60, top: 20, bottom: 20),
                        ),
                        onPressed: () {
                      gallery();
                    }, child: Text("Choose An Image from gallery",style: TextStyle(fontSize: 15,color: Colors.lightGreen),)),
                  ),
                  Container(
                    child: _img!=null?Image.file(_img):Text("No image"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: name1controller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.orangeAccent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ),
                          ),
                          hintText: "Enter First Name",
                          hintStyle: TextStyle(color: Colors.lightGreen),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: name2controller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.orangeAccent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ),
                          ),
                          hintText: "Enter Last Name",
                          hintStyle: TextStyle(color: Colors.lightGreenAccent),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: phonecontroller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.orangeAccent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ),
                          ),
                          hintText: "Enter Phone Number",
                          hintStyle: TextStyle(color: Colors.lightGreenAccent),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: emailcontroller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.orangeAccent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ),
                          ),
                          hintText: "Enter Email",
                          hintStyle: TextStyle(color: Colors.lightGreen),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: passwordcontroller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.orangeAccent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ),
                          ),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(color: Colors.lightGreen),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.only(
                              left: 60, right: 60, top: 20, bottom: 20),
                        ),
                        onPressed: () {
                          Submit();
                        },
                        child: Text("SUBMIT"),
                      ),
                      Text(status ? message : message,style: TextStyle(color: Colors.deepOrange),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.only(
                              left: 60, right: 60, top: 20, bottom: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => phplogin()));
                        },
                        child: Text("Login"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future Submit() async {
    var uri=Uri.parse("http://192.168.29.91/flutterdata/register2insert.php");
    var request=http.MultipartRequest("POST",uri);
    request.fields['firstname']=name1controller.text;
    request.fields['lastname']=name2controller.text;
    request.fields['phone']=phonecontroller.text;
    request.fields['email']=emailcontroller.text;
    request.fields['password']=passwordcontroller.text;
    var pic=await http.MultipartFile.fromPath("file",_img.path);
    print(_img);
    request.files.add(pic);
    request.send();
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
