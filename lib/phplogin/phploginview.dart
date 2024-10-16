import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/phplogin/viewpage_1.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginview extends StatefulWidget {
  const loginview({Key? key}) : super(key: key);
  @override
  State<loginview> createState() => _loginviewState();
}
class _loginviewState extends State<loginview> {
  var data='';
  void initState() {
getdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
length: 3,
child:
        Scaffold(
      appBar: AppBar(
        title: Text(data),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.menu_book),
              text: "tab1",
            ),
            Tab(
              icon: Icon(Icons.list_sharp),
              text: "tab2",
            )
          ],
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: TabBarView(
        children: [
          viewpage1(),
        ],
      ),
      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(60.0),
      //       child: Container(
      //         child: Text("welcome",style: TextStyle(fontSize: 70),),
      //       ),
      //     ),
      //   ],
      // ),
    )
    );
  }
  Future getdata() async{
    final preflog= await SharedPreferences.getInstance();
    setState(() {
      data=preflog.getString('name')!;
    });
    print("******************");
    print(data);
  }
// final pref=await SharedPreferences.getInstance();
  // setState(() {
  // printname=pref.getString('name')!;
  // });
}
