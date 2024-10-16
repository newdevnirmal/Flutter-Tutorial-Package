import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class splogin2 extends StatefulWidget {
  const splogin2({Key? key}) : super(key: key);

  @override
  State<splogin2> createState() => _splogin2State();
}
String  welcome="";

class _splogin2State extends State<splogin2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(
              child: ElevatedButton(onPressed: () async {
            final pref=await SharedPreferences.getInstance();
            setState(() {
              welcome=pref.getString('name')!;
            });
    }, child: Text("Get"),
    ),
    ),
          ),
    Padding(
      padding: const EdgeInsets.all(150.0),
      child: Container(
      child: Row(
        children: [
          Text("Welcome"),
          Text(welcome),
        ],
      ),

      ),
    )
        ],
      ));

  }
}
