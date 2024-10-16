import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage7 extends StatefulWidget {
  const newpage7({Key? key}) : super(key: key);

  @override
  State<newpage7> createState() => _newpage7State();
}

class _newpage7State extends State<newpage7> {
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
                    height: 250,
                    width: 250,
                    color: Colors.yellow,
                    child: Center(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                      children: [
                          Container(
                            height: 80,
                            width: 180,
                            color: Colors.green,
                          ) ,
                          Container(
                            height: 80,
                            width: 180,
                            color: Colors.blue,
                          ),
                        Container(
                            height: 80,
                            width: 180,
                            color: Colors.white54,
                          ),
                          Container(
                            height: 80,
                            width: 180,
                            color: Colors.red,
                          ),

                        Container(
                            height: 80,
                            width: 180,
                            color: Colors.orange,
                          ),
                        Container(
                            height: 80,
                            width: 180,
                            color: Colors.pink,
                          ),
                        Container(
                            height: 80,
                            width: 180,
                            color: Colors.black,
                          ),
                        Container(
                            height: 80,
                            width: 180,
                            color: Colors.cyanAccent,
                          ),
                        Container(
                            height: 80,
                            width: 180,
                            color: Colors.yellowAccent,
                          )
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
