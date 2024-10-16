import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/sharedprefrences2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedprefrence extends StatefulWidget {
  const sharedprefrence({Key? key}) : super(key: key);
  @override
  State<sharedprefrence> createState() => _sharedprefrenceState();
}
String ? printname="";
class _sharedprefrenceState extends State<sharedprefrence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set",style: TextStyle(color: Colors.black87,fontSize:20,fontWeight: FontWeight.bold),),
        // leading: Icon(Icons.home_work_sharp),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(150.0),
        child: Column(
          children: [
            (
            Container(
              child: ElevatedButton(onPressed: () async {
                final pref=await SharedPreferences.getInstance();
                pref.setString('name',"Nirmal").toString();
                setState(() {
                });
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedprefrence2()));
              }, child: Text("Set"),
              ),
            )
            ),
            // Container(
            //   child: ElevatedButton(onPressed: () async {
            //
            //     final pref=await SharedPreferences.getInstance();
            //     await pref.getString('name',);
            //     setState(() {
            //       printname=pref.getString('name');
            //     });
            //     await pref.getInt('id',);
            //     setState(() {
            //     });
            //   }, child: Text("Get"),
            //   ),
            // ),
            // Container(
            //   child: Text(printname!),
            // )
    ],
        ),
      ),
    );
  }
}
