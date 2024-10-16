import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage5 extends StatefulWidget {
  const newpage5({Key? key}) : super(key: key);

  @override
  State<newpage5> createState() => _newpage5State();
}

class _newpage5State extends State<newpage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar",style: TextStyle(color: Colors.black87,fontSize:20,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.home_work_sharp),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container
        (
        height: 200,
        color: Colors.black,

          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
        children: [
            Container(
              height: 50,
              width: 120,
              color: Colors.green,
              child: Center(child: Text("android")),
            ) ,
            SizedBox(width: 7,),
            Container(
              height: 50,
              width: 120,
              color: Colors.blue,
              child: Center(child: Text("IOS")),
            ),
          SizedBox(width: 7,),

          Container(
              height: 50,
              width: 120,
              color: Colors.red,
            child: Center(child: Text("windows")),
            )


        ],
      ),
          )),
    ),
            Container
      (
              width: 300,
                height: 250,
              color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
      children: [
          Container(
            height: 60,
            width: 120,
            color: Colors.green,
            child: Center(child: Text("flutter")),
          ) ,
        SizedBox(height: 7,),
          Container(
            height: 60,
            width: 120,
            color: Colors.blue,
            child: Center(child: Text("app")),
          ),
        SizedBox(height: 7,),
          Container(
            height: 60,
            width: 120,
            color: Colors.red,
            child: Center(child: Text("development")),
          )
      ],
    ),
        )),
          ],
        ),
      ),
    );
  }
}
