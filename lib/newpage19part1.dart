import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage19part1 extends StatefulWidget {
  const newpage19part1({Key? key}) : super(key: key);

  @override
  State<newpage19part1> createState() => _newpage19part1State();
}

class _newpage19part1State extends State<newpage19part1> {
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
                              title: Center(child: Text("Dad")),
                              subtitle: Center(child: Text("1234567890")),
                              leading: Icon(Icons.call,size: 50,),
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
                              title: Center(child: Text("Mom")),
                              subtitle: Center(child: Text("0987654321")),
                              leading: Icon(Icons.call_missed,size: 50),
                              trailing: Icon(Icons.phone_android,size: 50),
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
                              title: Center(child: Text("sister")),
                              subtitle: Center(child: Text("954623178")),
                              leading: Icon(Icons.missed_video_call,size: 50),
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
                              title: Center(child: Text("friend")),
                              subtitle: Center(child: Text("9517538520")),
                              leading: Icon(Icons.call,size: 50),
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
                              title: Center(child: Text("brother")),
                              subtitle: Center(child: Text("753951852")),
                              leading: Icon(Icons.call_missed_outgoing,size: 50),
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
