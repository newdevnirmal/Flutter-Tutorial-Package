import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/phplogin/phploginview.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class phplogin extends StatefulWidget {
  const phplogin({Key? key}) : super(key: key);

  @override
  State<phplogin> createState() => _phploginState();
}
class _phploginState extends State<phplogin> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  late bool status;
  late String message;
  // late bool data;
  void initState() {
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
        title: Text("LOGIN"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:NetworkImage("https://wallpapercave.com/wp/wp3820230.jpg"),
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
                    padding: const EdgeInsets.only(top: 1.0,bottom: 2,left: 130,right: 130),
                    child: Container(
                      child: Image.network("https://creazilla-store.fra1.digitaloceanspaces.com/icons/3244001/flutter-icon-md.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                    child: TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ),
                          ),
                          hintText: "Enter Email",
                          hintStyle: TextStyle(color: Colors.blue),
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
                      controller: passwordcontroller,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.red),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.greenAccent,
                            ),
                          ),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(color: Colors.blue),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.only(
                            left: 70, right: 70, top: 20, bottom: 20),
                      ),
                      onPressed: () {
                        Submit();
                      },
                      child: Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.purple),),
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
  Future Submit() async {
    var APIURL =
        "http://192.168.29.91/flutterdata/logincheck.php";
    //json maping user entered details
    Map maped_data = {
      'email': emailcontroller.text,
      'password': passwordcontroller.text,
    };
    http.Response reponse = await http.post(Uri.parse(APIURL), body: maped_data);
    var data = jsonDecode(reponse.body);
    // var responseMessage = data["message"];
    // var responseError = data["error"];
    print(data);
    if(data!=null)
    {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => loginview()));
      final preflog=await SharedPreferences.getInstance();
      preflog.setString('name',emailcontroller.text).toString();
    }
    // if (responseError) {
    //   setState(() {
    //     status = false;
    //     message = responseMessage;
    //   });
    // }
    // else {
    //   setState(() {
    //     status = true;
    //     message = responseMessage;
    //   });
    // }
  }
  }
