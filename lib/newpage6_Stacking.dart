import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage6 extends StatefulWidget {
  const newpage6({Key? key}) : super(key: key);

  @override
  State<newpage6> createState() => _newpage6State();
}

class _newpage6State extends State<newpage6> {
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
                    height: 300,
                    width: 300,
                    color: Colors.grey,
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 120,
                            width: 220,
                            color: Colors.green,
                          ) ,
                          Container(
                            height: 100,
                            width: 200,
                            color: Colors.blue,
                            child: Text("Containers"),
                          ),
                          Container(
                            height: 80,
                            width: 180,
                            color: Colors.red,
                            child: Text("Stacking",style: TextStyle(fontSize: 40),),
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
