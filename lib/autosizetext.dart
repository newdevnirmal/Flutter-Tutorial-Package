import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class autosizetext extends StatefulWidget {
  const autosizetext({Key? key}) : super(key: key);

  @override
  State<autosizetext> createState() => _autosizetextState();
}

class _autosizetextState extends State<autosizetext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150.0,),
        child: Container(
          height: 450,
          width:400 ,
          color: Colors.purple,
          child: AutoSizeText("Auto Size Text widget is a useful widget for App development in flutter",
              minFontSize: 50,
            maxLines:5,
            style: TextStyle(fontSize: 80),),
        ),
      ),
    );
  }
}
