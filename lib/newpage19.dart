import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/bottomnav2.dart';
import 'package:flutterapp/bottomsheet2.dart';
import 'package:flutterapp/newpage10_Tile.dart';
import 'package:flutterapp/newpage11_images.dart';
import 'package:flutterapp/newpage15.dart';
import 'package:flutterapp/newpage19part1.dart';
import 'package:flutterapp/newpage7_listview.dart';
import 'package:flutterapp/newpage9.dart';
import 'package:flutterapp/tabbar2.dart';
class newpage19 extends StatefulWidget {
  const newpage19({Key? key}) : super(key: key);
  @override
  State<newpage19> createState() => _newpage19State();
}
class _newpage19State extends State<newpage19> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.image),
              ),
              Tab(
                icon: Icon(Icons.contact_page),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            bottomnav2(),
           newpage11(),
            newpage19part1()

          ],
        ),
      ),
    );
  }
}
