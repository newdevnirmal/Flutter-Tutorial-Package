import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class newpage15 extends StatefulWidget {
  const newpage15({Key? key}) : super(key: key);
  @override
  State<newpage15> createState() => _newpage15State();
}
class _newpage15State extends State<newpage15> {
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
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                            color: Colors.pinkAccent,
                            elevation: 100,
                            shadowColor: Colors.pink,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ListTile(
                                title: Center(child: Text("Android")),
                                leading: Icon(Icons.android,size: 50,),
                                trailing: Container(
                                  height:50,
                                    width: 50,
                                    child: ClipOval(child: Image.asset("assets/images/android.jpeg",fit: BoxFit.fill,))
                                )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                            color: Colors.orange,
                            elevation: 10,
                            shadowColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ListTile(
                                title: Center(child: Text("Windows")),
                                  leading: Icon(Icons.window_sharp,size: 50,),
                                  trailing: Container(
                                    height: 50,
                                      width: 50,
                                      child:ClipOval(child:Image.asset("assets/images/win11.jpeg",fit: BoxFit.fill,))
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                            color: Colors.green,
                            elevation: 100,
                            shadowColor: Colors.greenAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ListTile(
                                title: Center(child: Text("IOS")),
                                  leading: Icon(Icons.apple,size: 50,),
                                  trailing: Container(
                                      height:50,
                                      width: 50,
                                      child:ClipOval(child: Image.asset("assets/images/ios.jpeg",fit: BoxFit.fill,))
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                            color: Colors.blueAccent,
                            elevation: 100,
                            shadowColor: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ListTile(
                                // tileColor: Colors.blue,
                                title: Center(child: Text("Linux")),
                                  leading: Icon(Icons.terminal,size: 50,),
                                  trailing: Container(
                                      height: 50,
                                      width: 50,
                                    child:ClipOval(child: Image.asset("assets/images/linux.jpeg",fit: BoxFit.fill,))
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                            color: Colors.red,
                            elevation: 100,
                            shadowColor: Colors.redAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ListTile(
                                title: Center(child: Text("MAC")),
                                  leading: Icon(Icons.laptop_mac,size: 50,),
                                  trailing: Container(
                                      height: 50,
                                      width: 50,
                                  child:ClipOval( child: Image.asset("assets/images/mac.jpeg",fit: BoxFit.fill,))
                                  )
                              ),
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