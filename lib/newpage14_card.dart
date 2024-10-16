import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class newpage14 extends StatefulWidget {
  const newpage14({Key? key}) : super(key: key);
  @override
  State<newpage14> createState() => _newpage14State();
}
class _newpage14State extends State<newpage14> {
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
                            child: Card(
                              elevation: 100,
                              shadowColor: Colors.pink,
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  side: BorderSide(width: 10,color: Colors.grey),
                                ),
                                tileColor: Colors.pinkAccent,
                                title: Center(child: Text("Android")),
                                subtitle: Center(child: Text("OS")),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: Card(
                              elevation: 100,
                              shadowColor: Colors.orangeAccent,
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  side: BorderSide(width: 10,color: Colors.grey),
                                ),
                                tileColor: Colors.orange,
                                title: Center(child: Text("Windows")),
                                subtitle: Center(child: Text("OS")),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: Card(
                              elevation: 100,
                              shadowColor: Colors.greenAccent,
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    side: BorderSide(width: 10,color: Colors.grey)
                                ),
                                tileColor: Colors.green,
                                title: Center(child: Text("IOS")),
                                subtitle: Center(child: Text("OS")),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: Card(
                              color: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  side: BorderSide(width: 10,color: Colors.grey)
                              ),
                              elevation: 100,
                              shadowColor: Colors.blueAccent,
                              child: ListTile(
                                // tileColor: Colors.blue,
                                title: Center(child: Text("Linux")),
                                subtitle: Center(child: Text("OS")),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            height: 150,
                            child: Card(
                              elevation: 100,
                              shadowColor: Colors.redAccent,
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    side: BorderSide(width: 10,color: Colors.grey)
                                ),
                                tileColor: Colors.red,
                                title: Center(child: Text("MAC")),
                                subtitle: Center(child: Text("OS")),
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