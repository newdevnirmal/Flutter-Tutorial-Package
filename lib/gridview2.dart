import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview2 extends StatefulWidget {
  const gridview2({Key? key}) : super(key: key);
  @override
  State<gridview2> createState() => _gridview2State();
}
class _gridview2State extends State<gridview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: GridView(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,

            ),
            children: [
              Container(
                child: Image.asset("assets/images/spiderman.png",),
                color: Colors.red,
              ),
              Container(
                child: Image.asset("assets/images/batman.png",),
                color: Colors.blue,
              ),
              Container(
                child: Image.asset("assets/images/japan.png",),
                color: Colors.red,
              ),
              Container(
                child: Image.asset("assets/images/pic2.jpg",),
                color: Colors.blueGrey,
              ),
              Container(
                child: Image.asset("assets/images/spartans.jpg",),
                color: Colors.yellow,
              ), Container(
                child: Image.asset("assets/images/pic1.jpg",),
                color: Colors.blueAccent.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
