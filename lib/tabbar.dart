import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/bottomnav.dart';
import 'package:flutterapp/bottomsheet.dart';

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}
class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.close),
                text: "tab1",
              ),
              Tab(
                icon: Icon(Icons.close),
                text: "tab1",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            bottomnav(),
            bottomsheet()
          ],
        ),
      ),
    );
  }
}
