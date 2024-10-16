import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/bottomnav2.dart';
import 'package:flutterapp/bottomsheet2.dart';
import 'package:flutterapp/newpage11_images.dart';
import 'package:flutterapp/newpage12.dart';
import 'package:flutterapp/newpage13.dart';
import 'package:flutterapp/newpage19.dart';
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);
  @override
  State<drawer> createState() => _drawerState();
}
class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("drawer"),
          bottom: TabBar(

            tabs: [
              Tab(
                icon: Icon(Icons.first_page),
              ),
              Tab(
                icon: Icon(Icons.pages),
              ),
              Tab(
                icon: Icon(Icons.last_page),
              )
            ],

          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 50,
                color: Colors.red,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>(newpage13())));
                }, child: Text("PROFILE"))
              ),
              Container(
                  height: 50,
                  color: Colors.redAccent,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>(newpage11())));
                  }, child: Text("IMAGES"))
              ),
              Container(
                  height: 50,
                  color: Colors.deepOrange,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>(newpage19())));
                  }, child: Text("CONTACTS"))
              ),
              Container(
                  height: 50,
                  color: Colors.deepOrangeAccent,
                  child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>(newpage12())));
                  },icon:  Icon(Icons.shield,color: Colors.blueAccent,),),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            bottomnav2(),
            bottomsheet2(),
            newpage12()
          ],
        ),
      ),
    );
  }
}
