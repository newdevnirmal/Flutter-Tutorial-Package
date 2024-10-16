import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage8 extends StatefulWidget {
  const newpage8({Key? key}) : super(key: key);

  @override
  State<newpage8> createState() => _newpage8State();
}

class _newpage8State extends State<newpage8> {
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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:100.0 ),
                child: Container
                  (
                    height:250,
                    width: 250,
                    color: Colors.black,
                    child: Center(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          SizedBox(width: 7,height: 20,),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.green,
                            child: Column(
                              children: [
                                Center(child: Text("Android",style: TextStyle(fontSize: 40),)),
                                Icon(Icons.android,color: Colors.black,size: 20,),
                              ],
                            )
                          ),
                          SizedBox(width: 7,height:20,),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Center(child: Text("Windows",style: TextStyle(fontSize: 40),)),
                                Icon(Icons.window_sharp,color: Colors.black,size: 20,),
                              ],
                            )
                          ),
                          SizedBox(width: 7,height: 20,),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.red,
                            child: Column(
                              children: [
                                Center(child: Text("Linux",style: TextStyle(fontSize: 40),)),
                                Icon(Icons.settings,color: Colors.black,size: 20,),
                              ],
                            )
                          ),
                          SizedBox(width: 7,height: 20,),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.orange,
                            child:Column(
                              children: [
                                Center(child: Text("macos",style: TextStyle(fontSize: 40),)),
                                Icon(Icons.apple,color: Colors.black,size: 20,),
                              ],
                            )
                          ),
                          SizedBox(width: 7,height: 20,),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.pink,
                              child:Column(children: [
                                Center(child: Text("Chromeos",style: TextStyle(fontSize: 40),)),
                                Icon(Icons.laptop_chromebook,color: Colors.black,size: 20,),
                              ],)
                          ),
                          SizedBox(width: 7,height: 20,),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.blueGrey,
                              child:Column(children: [
                                Center(child: Text("AndroidTv",style: TextStyle(fontSize: 40),)),
                                Icon(Icons.tv,color: Colors.black,size: 20,),
                              ],)
                          ),
                          SizedBox(width: 7,height: 20,),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
