import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedprefrence2 extends StatefulWidget {
  const sharedprefrence2({Key? key}) : super(key: key);
  @override
  State<sharedprefrence2> createState() => _sharedprefrence2State();
}
String  printname="";
class _sharedprefrence2State extends State<sharedprefrence2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get",style: TextStyle(color: Colors.black87,fontSize:20,fontWeight: FontWeight.bold),),
        // leading: Icon(Icons.home_work_sharp),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(150.0),
        child: Column(
          children: [
            Container(
              child: ElevatedButton(onPressed: () async {
                final pref=await SharedPreferences.getInstance();
                setState(() {
                  printname=pref.getString('name')!;
                });
                await pref.getInt('id',);
              }, child: Text("Get"),
              ),
            ),
            Container(
              child: Text(printname),
            )
          ],
        ),
      ),
    );
  }
}
