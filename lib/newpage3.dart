import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage3 extends StatefulWidget {
  const newpage3({Key? key}) : super(key: key);

  @override
  State<newpage3> createState() => _newpage3State();
}

class _newpage3State extends State<newpage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nirmals app",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.home_work_sharp),
        backgroundColor: Colors.black54,
        actions: [

        ],
      ),
        body: SingleChildScrollView(
        child: Column(
            children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.yellowAccent,
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
          child: Container(
            height: 250,
            width: 250,

            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 10,color: Colors.black)
            ),
          ),
        ),
        Row(
            children: [

          Container(
            height: 140,
            width: 170,
            color: Colors.pinkAccent,
          ),
          Container(
            height: 160,
            width: 140,
            color: Colors.yellow,
          ),
          Container(
            height: 145,
            width: 100,
            color: Colors.lightGreenAccent,
          )
        ]
        )
        ]
            ),
    )
        );
  }
}
