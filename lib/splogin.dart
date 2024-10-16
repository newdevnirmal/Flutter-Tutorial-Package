import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/splogin2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splogin extends StatefulWidget {
  const splogin({Key? key}) : super(key: key);

  @override
  State<splogin> createState() => _sploginState();
}

TextEditingController name=new TextEditingController();


class _sploginState extends State<splogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                  hintText: "Name"
              ),
            ),
            ElevatedButton(onPressed: () async {
              final pref=await SharedPreferences.getInstance();
              pref.setString('name',name.text).toString();
              setState(() {
              });
              Navigator.push(context, MaterialPageRoute(builder: (context)=>splogin2()));

              setState(() {
              });

            }, child: Text("sign up")),
            Text(name.text),
          ],
        ),
      ),
    );
  }
}
