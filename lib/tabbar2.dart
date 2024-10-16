import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/bottomnav.dart';
import 'package:flutterapp/bottomnav2.dart';
import 'package:flutterapp/bottomsheet.dart';
import 'package:flutterapp/bottomsheet2.dart';
import 'package:flutterapp/newpage12.dart';
import 'package:flutterapp/newpage13.dart';
import 'package:flutterapp/newpage14_card.dart';
import 'package:flutterapp/nwepage18.dart';

class tabbar2 extends StatefulWidget {
  const tabbar2({Key? key}) : super(key: key);

  @override
  State<tabbar2> createState() => _tabbar2State();
}

class _tabbar2State extends State<tabbar2> {
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
