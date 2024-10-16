import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage10 extends StatefulWidget {
  const newpage10({Key? key}) : super(key: key);

  @override
  State<newpage10> createState() => _newpage10State();
}

class _newpage10State extends State<newpage10> {
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
                              title: Center(child: Text("Windows")),
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
                              title: Center(child: Text("IOS")),
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
                              title: Center(child: Text("Linux")),
                              subtitle: Center(child: Text("OS")),
                              leading: Icon(Icons.terminal,size: 50),
                              trailing: Icon(Icons.computer,size: 50),
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
                              tileColor: Colors.red,
                              title: Center(child: Text("MAC")),
                              subtitle: Center(child: Text("OS")),
                              leading: Icon(Icons.apple,size: 50),
                              trailing: Icon(Icons.laptop_mac,size: 50),
                            ),
                          ),
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
