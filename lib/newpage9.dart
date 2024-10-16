import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage9 extends StatefulWidget {
  const newpage9({Key? key}) : super(key: key);

  @override
  State<newpage9> createState() => _newpage9State();
}

class _newpage9State extends State<newpage9> {
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
            Center(
              child: Container
                (
                  height:600,
                  width: 500,
                  color: Colors.black,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(width: 7,height: 20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(2.0),
                                border: Border.all(width: 10.0,color: Colors.black)
                            ),
                            height: 100,
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.android,color: Colors.black,size: 30,),
                                    SizedBox(width:30,height:30),
                                    Center(child: Text("Android",style: TextStyle(fontSize: 40),)),
                                    SizedBox(width:30,height:30),
                                    Icon(Icons.android,color: Colors.black,size: 30,),
                                  ],
                                ),
                              ),
                            )
                        ),
                        SizedBox(width: 7,height:20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(2.0),
                                border: Border.all(width: 10.0,color: Colors.black)
                            ),
                            height: 100,
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.window_sharp,color: Colors.black,size: 20,),
                                    SizedBox(width:30,height:30),
                                    Center(child: Text("Windows",style: TextStyle(fontSize: 40),)),
                                    SizedBox(width:30,height:30),
                                    Icon(Icons.window_sharp,color: Colors.black,size: 20,),
                                  ],
                                ),
                              ),
                            )
                        ),
                        SizedBox(width: 7,height: 20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(2.0),
                                border: Border.all(width: 10.0,color: Colors.black)
                            ),
                            height: 100,
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.settings,color: Colors.black,size: 20,),
                                    SizedBox(width:30,height:30),
                                    Center(child: Text("Linux",style: TextStyle(fontSize: 40),)),
                                    SizedBox(width:10,height:30),
                                    Icon(Icons.settings,color: Colors.black,size: 20,),
                                  ],
                                ),
                              ),
                            )
                        ),
                        SizedBox(width: 7,height: 20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(2.0),
                                border: Border.all(width: 10.0,color: Colors.black)
                            ),
                            height: 100,
                            width: 250,
                            child:Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.apple,color: Colors.black,size: 30,),
                                    SizedBox(width:30,height:30),
                                    Center(child: Text("macos",style: TextStyle(fontSize: 40),)),
                                    SizedBox(width:10,height:30),
                                    Icon(Icons.apple,color: Colors.black,size: 30,),
                                  ],
                                ),
                              ),
                            )
                        ),
                        SizedBox(width: 7,height: 20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(2.0),
                                border: Border.all(width: 10.0,color: Colors.black)
                            ),
                            height: 100,
                            width: 250,
                            child:Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                                child: Row(children: [
                                  Icon(Icons.laptop_chromebook,color: Colors.black,size: 30,),
                                  SizedBox(width:30,height:30),
                                  Center(child: Text("Chromeos",style: TextStyle(fontSize: 40),)),
                                  SizedBox(width:10,height:30),
                                  Icon(Icons.laptop_chromebook,color: Colors.black,size: 30,),
                                ],),
                              ),
                            )
                        ),
                        SizedBox(width: 7,height: 20,),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(2.0),
                                border: Border.all(width: 10.0,color: Colors.black)
                            ),
                            height: 100,
                            width: 250,
                            child:Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                                child: Row(children: [
                                  Icon(Icons.tv,color: Colors.black,size: 20,),
                                  SizedBox(width:30,height:30),
                                  Center(child: Text("AndroidTv",style: TextStyle(fontSize: 40),)),
                                  SizedBox(width:10,height:30),
                                  Icon(Icons.tv,color: Colors.black,size: 20,),
                                ],),
                              ),
                            )
                        ),
                        SizedBox(width: 7,height: 20,),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
