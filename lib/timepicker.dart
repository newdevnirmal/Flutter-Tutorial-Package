import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class timepicker extends StatefulWidget {
  const timepicker({Key? key}) : super(key: key);
  @override
  State<timepicker> createState() => _timepickerState();
}
TextEditingController time=new TextEditingController();
class _timepickerState extends State<timepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        TextFormField(
          controller: time,
          onTap: ()async{
            var Time=await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now());
            print(Time);
            if(Time!=null)
              {
                setState(() {
                  time.text=Time.format(context);
                });
              }
          },
        ),
      ),
    );
  }
}
