import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textcontroller extends StatefulWidget {
  const textcontroller({Key? key}) : super(key: key);

  @override
  State<textcontroller> createState() => _textcontrollerState();
}

TextEditingController name=new TextEditingController();


class _textcontrollerState extends State<textcontroller> {
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
            ElevatedButton(onPressed: (){
              setState(() {
              });

            }, child: Text("get data")),
        Text(name.text),
          ],
        ),
      ),
    );
  }
}
