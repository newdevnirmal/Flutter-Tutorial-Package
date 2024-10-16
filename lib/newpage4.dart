import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage4 extends StatefulWidget {
  const newpage4({Key? key}) : super(key: key);

  @override
  State<newpage4> createState() => _newpage4State();
}

class _newpage4State extends State<newpage4> {
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
                  child: Text("the text inside a container",style:TextStyle(fontSize: 20),)
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                  child: Container(
                    height: 250,
                    width: 250,
                      child: Center(child: Text("Flutter",style:TextStyle(fontSize: 40),)),
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
                        height: 160,
                        width: 135,
                        color: Colors.red,

                          child: Padding(
                            padding: const EdgeInsets.only(left: 15,top: 50),
                            child: Column(
                              children: [
                                Text("Android",style:TextStyle(fontSize: 30),),
                                Icon(Icons.android,color: Colors.black,size: 20,),
                              ],
                            ),
                          )
                      ),
                      Container(
                        height: 160,
                        width: 141,
                        color: Colors.yellow,

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 55.0,horizontal: 50.0),
                            child: Column(
                              children: [
                                Text("IOS",style:TextStyle(fontSize: 25),),
                                Icon(Icons.apple,color: Colors.black,size: 20,),
                              ],
                            ),
                          )
                      ),
                      Container(
                        height: 160,
                        width: 135,
                        color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15,top: 50),
                            child: Column(
                              children: [
                                Text("windows",style:TextStyle(fontSize: 30),),
                                Icon(Icons.desktop_windows,color: Colors.black,size: 20,),
                              ],
                            ),
                          )
                      )
                    ]
                )
              ]
          ),
        )
    );
  }
}
