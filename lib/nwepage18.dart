import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newpage14_card.dart';
import 'newpage15.dart';
import 'newpage18part1.dart';
import 'newpage18part2.dart';
import 'nwepage18part3.dart';

class newpage18 extends StatefulWidget {
  const newpage18({Key? key}) : super(key: key);

  @override
  State<newpage18> createState() => _newpage18State();
}

class _newpage18State extends State<newpage18> {
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
                  height:500,
                  width: 400,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                side: BorderSide(width: 10,color: Colors.grey),
                              ),
                              tileColor: Colors.pinkAccent,
                              title: Center(child: Text("Android")),
                              subtitle: Center(child: Text("OS")),
                              leading: Icon(Icons.android,size: 50,),
                              trailing: Icon(Icons.phone_android,size: 50,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                side: BorderSide(width: 10,color: Colors.grey),
                              ),
                              tileColor: Colors.orange,
                              title: Center(child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage18part3()));
                              }, child: Text("Windows",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w100)))),
                              subtitle: Center(child: Text("OS")),
                              leading: Icon(Icons.window_outlined,size: 50),
                              trailing: Icon(Icons.laptop,size: 50),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  side: BorderSide(width: 10,color: Colors.grey)
                              ),
                              tileColor: Colors.green,
                              title: Center(child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage18part2()));
                              }, child: Text("IOS",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w100)))),
                              subtitle: Center(child: Text("OS")),
                              leading: Icon(Icons.apple,size: 50),
                              trailing: Icon(Icons.phone_iphone,size: 50),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  side: BorderSide(width: 10,color: Colors.grey)
                              ),
                              tileColor: Colors.blue,
                              title: Center(child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage18part1()));
                              }, child: Text("Linux",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w100)))),
                              subtitle: Center(child: Text("OS")),
                              leading: Icon(Icons.terminal,size: 50),
                              trailing: Icon(Icons.computer,size: 50),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: FloatingActionButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage15()));
                          },child:Icon(Icons.info_sharp,size: 50)),
                      )
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
