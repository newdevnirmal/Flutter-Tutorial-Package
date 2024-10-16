import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}
TextEditingController num1=new TextEditingController();
TextEditingController num2=new TextEditingController();
int res=0;
class _calculatorState extends State<calculator> {
  String get rs => " ";
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
                    Container(
                      height: 300,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 10,color: Colors.deepOrangeAccent)
                      ),
                      child: Column(
                        children: [
                          Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:100),
                              child: Container(
                                width: 100,
                                child: TextField(
                                  controller: num1,
                                  decoration: InputDecoration(
                                      hintText: "Enter First Number",
                                      labelText: "First number"
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:100),
                                child: Container(
                                  width: 100,
                                  child: TextField(
                                    controller: num2,
                                    decoration: InputDecoration(
                                        hintText: "Enter Second Number",
                                        labelText: "Second number"
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:100),
                            child: Row(
                              children: [
                                Text("ANSWER="),
                                Text(res.toString()),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    res=int.parse(num1.text)+int.parse(num2.text);
                                  });
                                },child:Icon(Icons.add,size: 50)),
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    res=int.parse(num1.text)-int.parse(num2.text);
                                  });
                                },child:Icon(Icons.remove,size: 50)),
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    res=int.parse(num1.text)*int.parse(num2.text);
                                  });
                                },child:Icon(Icons.close,size: 50)),
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    res=(int.parse(num1.text)~/int.parse(num2.text)) as int;
                                  });
                                },child:Text("/",style:TextStyle(fontSize:35))),
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    res=int.parse(num1.text)%int.parse(num2.text);
                                  });
                                },child:Icon(Icons.percent,size: 50)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
