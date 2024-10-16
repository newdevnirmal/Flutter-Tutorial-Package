
import 'package:flutter/material.dart';
class opacity1 extends StatefulWidget {
  // const opacity1(Container container, {Key? key}) : super(key: key);
  @override
  State<opacity1> createState() => _opacity1State();
}
class _opacity1State extends State<opacity1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child:
          Padding(
            padding: const EdgeInsets.all(140.0),
            child: Opacity(

              opacity:0.5,
              child: Container(
                height: 200,
                width: 200,
                child: Text("OPACITY"),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(width: 30.0,color: Colors.black)
                ),
              ),
              // Container(
              //   height: 200,
              //   width: 200,
              //   child: Text("OPACITY"),
              //   decoration: BoxDecoration(
              //       color: Colors.red,
              //       borderRadius: BorderRadius.circular(20.0),
              //       border: Border.all(width: 30.0,color: Colors.red)
              //   ),
              // ),
            ),
          )
      ),
    );
  }
}





