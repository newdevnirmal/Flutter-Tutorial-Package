import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({Key? key}) : super(key: key);

  @override
  State<textfield> createState() => _textfieldState();
}
late String name="Not entered";

class _textfieldState extends State<textfield> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Name",
                labelText: "name"
              ),
              onChanged: (value)=>name=value,
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
            });
          }, child: Text("Get value")),
    Text(name),
        ],
      ),
    );
  }
}
