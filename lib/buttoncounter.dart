import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class spcount extends StatefulWidget {
  const spcount({Key? key}) : super(key: key);
  @override
  State<spcount> createState() => _spcountState();
}
var res=0;
String last="";
class _spcountState extends State<spcount> {
  String get rs => " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text("You've pressed This Button This Many Times",style: TextStyle(fontSize: 20),),
              ),
              Container(
                child:Text(res.toString(),style: TextStyle(fontSize: 50),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400,left: 50),
            child: Container(
              child:FloatingActionButton(onPressed: () async {
                final pref=await SharedPreferences.getInstance();
                pref.setInt('num',res).toString();
                setState(() {
               res++;
             });

              }, child: Icon(Icons.add),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:50),
            child: Container(
              child: FloatingActionButton(onPressed: () async {
                final pref=await SharedPreferences.getInstance();
                last=pref.getInt('num',).toString();
                setState(() {
                });
              }, child: Text("reload"),
              ),
            ),
          ),
          Container(
            child: Text(last),
          )
        ],
      ),
    );
  }
}
