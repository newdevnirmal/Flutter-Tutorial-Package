import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newpage.dart';
import 'newpage11_images.dart';
import 'newpage12.dart';
import 'newpage13.dart';
import 'newpage14_card.dart';
import 'newpage16_inkwell.dart';
import 'newpage4.dart';
import 'newpage5.dart';
import 'newpage6_Stacking.dart';
import 'newpage7_listview.dart';
class newpage17 extends StatefulWidget {
  const newpage17({Key? key}) : super(key: key);

  @override
  State<newpage17> createState() => _newpage17State();
}

class _newpage17State extends State<newpage17> {
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
                            child:InkWell(
                                onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage5()));
                            },
                            child: Text("Containor")),
                            ),
                        OutlinedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage16()));
                        },
                          child: Text("inkWell"),
                          style: OutlinedButton.styleFrom(
                          ),
                        ),
                        OutlinedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage13()));
                        }, child: Icon(Icons.info_outline,color: Colors.black,),),
                        ElevatedButton(onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage12()));
                        }, child: Icon(Icons.shield,color: Colors.black,),),
                        FloatingActionButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage4()));
                        },child: Icon(Icons.settings,color: Colors.black,),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage()));
                        }, child: Text("TEST Page"))
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
