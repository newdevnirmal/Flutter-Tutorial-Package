import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/newpage14_card.dart';
import 'package:flutterapp/newpage15.dart';
import 'package:flutterapp/nwepage18.dart';

class bottomsheet2 extends StatefulWidget {
  const bottomsheet2({Key? key}) : super(key: key);

  @override
  State<bottomsheet2> createState() => _bottomsheet2State();
}
class _bottomsheet2State extends State<bottomsheet2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 350),
              child: IconButton(onPressed: (){
                showModalBottomSheet(
                    context: context,
                    builder: (context){
                      return Container(
                        height: 100,
                        child: Row(
                          children: [
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: Icon(Icons.close)),
                           OutlinedButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage15()));
                           }, child: Text("Dynamic")),
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage18()));
                            },  icon: Icon(Icons.info_sharp),)
                          ],
                        ),
                      );
                    });
              }, icon: Icon(Icons.menu),
              ),
            ),
          ) , Center(
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
    );
  }
}
