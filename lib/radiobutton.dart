import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radiobutton extends StatefulWidget {
  const radiobutton({Key? key}) : super(key: key);

  @override
  State<radiobutton> createState() => _radiobuttonState();
}
TextEditingController name=new TextEditingController();
String ? value="";
class _radiobuttonState extends State<radiobutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: (Colors.purple),
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
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                child: Column(
                  children: [
                    Text("SELECT YOUR COLOR"),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: "RED",
                                groupValue: value,
                                onChanged: (val){
                                  setState(() {
                                    value=val;
                                  });
                                }),
                            Text("RED")
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: "GREEN",
                                groupValue: value,
                                onChanged: (val){
                                  setState(() {
                                    value=val;
                                  });
                                }),
                            Text("GREEN")
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: "BLUE",
                                groupValue: value,
                                onChanged: (val){
                                  setState(() {
                                    value=val;
                                  });
                                }),
                            Text("BLUE")
                          ],
                        ),

                      ],
                    ),
                    Text(value!),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
