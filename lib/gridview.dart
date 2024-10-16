import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,

            ),
            children: [
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.yellow,
              ), Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.yellow,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
