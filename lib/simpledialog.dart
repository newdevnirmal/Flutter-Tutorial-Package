import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/newpage15.dart';

import 'drawer.dart';
import 'nwepage18.dart';

class simpledialog extends StatefulWidget {
  const simpledialog({Key? key}) : super(key: key);

  @override
  State<simpledialog> createState() => _simpledialogState();
}

class _simpledialogState extends State<simpledialog> {
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
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return SimpleDialog(
                      title: Text("Related Pages"),
                      children: [
                        SimpleDialogOption(
                          child: Container(
                      height: 20,width: 10,color:Colors.green
                            ,child: Center(child: Text("Stylized")),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage15()));

                          },
                        ),
                        SimpleDialogOption(
                          child: Container(
                    height: 20,width: 10,color:Colors.yellowAccent,
                            child: Center(child: Text("Detailed")),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage18()));

                          },
                        ),
                        SimpleDialogOption(
                          child: Container( height: 20,width: 10,color:Colors.deepOrange,
                            child: Center(child: Text("Detailed and stylized")),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>drawer()));

                          },
                        )
                      ],
                    );
                  });
            }, child: Icon(Icons.info),)
          ],
        ),
      ),
    );
  }
}
