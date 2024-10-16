import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'newpage12.dart';
import 'newpage13.dart';
import 'newpage15.dart';
import 'nwepage18.dart';
class bottomnav2 extends StatefulWidget {
  const bottomnav2({Key? key}) : super(key: key);

  @override
  State<bottomnav2> createState() => _bottomnav2State();
}

class _bottomnav2State extends State<bottomnav2> {
  int currentindex=0;
  final screens=[
    newpage18(),
    newpage15(),
    newpage13(),
    newpage12()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize:20 ,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.details),
              label: "Detailed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: "Pofile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album),
              label: "Images")
        ],

      ),
    );
  }
}
