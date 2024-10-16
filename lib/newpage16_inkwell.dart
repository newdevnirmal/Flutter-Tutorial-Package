import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newpage11_images.dart';
import 'newpage14_card.dart';
import 'newpage6_Stacking.dart';
import 'newpage7_listview.dart';
class newpage16 extends StatefulWidget {
  const newpage16({Key? key}) : super(key: key);

  @override
  State<newpage16> createState() => _newpage16State();
}
class _newpage16State extends State<newpage16> {
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
        child:  Column(
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
                          child:  InkWell(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage14()));
                              },
                              child: Text("Card"))
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child:  InkWell(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage11()));
                              },
                              child: Text("Images"))
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child:  InkWell(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage14()));
                              },
                              child: Text("Tile"))
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child:  InkWell(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage7()));
                              },
                              child: Text("List view"))
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child:  InkWell(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage6()));
                              },
                              child: Text("Stacking"))
                        ),
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
