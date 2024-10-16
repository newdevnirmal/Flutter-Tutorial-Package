import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radiobutton2 extends StatefulWidget {
  const radiobutton2({Key? key}) : super(key: key);

  @override
  State<radiobutton2> createState() => _radiobuttonState();
}
String ? value="";

class _radiobuttonState extends State<radiobutton2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                child: Column(
                  children: [
                    Text("Solve this basic math 1+4/2*2",style: TextStyle(fontSize: 40),),
                    Container(
                      height: 250,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 10,color: Colors.deepOrangeAccent)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                // width:200,
                                // height: 120,
                                child: Radio(
                                  activeColor: Colors.deepOrange,
                                  hoverColor: Colors.purple,
                                    value: "Incorrect",
                                    groupValue: value,
                                    onChanged: (val){
                                      setState(() {
                                        value=val;
                                      });
                                    }),
                              ),
                              Text("2")
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  activeColor: Colors.deepOrange,
                                  hoverColor: Colors.purple,
                                  value: "Correct",
                                  groupValue: value,
                                  onChanged: (val){
                                    setState(() {
                                      value=val;
                                    });
                                  }),
                              Text("5")
                            ],
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale:1,
                                child: Radio(
                                    activeColor: Colors.deepOrange,
                                    hoverColor: Colors.purple,
                                    value: "That is Incorrect",
                                    groupValue: value,
                                    onChanged: (val){
                                      setState(() {
                                        value=val;
                                      });
                                    }),
                              ),
                              Text("1.25")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(value!,style: TextStyle(fontSize: 40),),
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
