import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class datepicker extends StatefulWidget {
  const datepicker({Key? key}) : super(key: key);
  @override
  State<datepicker> createState() => _datepickerState();
}
TextEditingController date=new TextEditingController();
var Date;
class _datepickerState extends State<datepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: TextFormField(
          controller: date,
          onTap: ()async{
            DateTime Date=await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1970),
                lastDate: DateTime(2060)) as DateTime;
                setState(() {
                  date.text=DateFormat('yyyy-MM-dd').format(Date);
                });
          },
       ),
// child: TextFormField(
//   controller: date,
//   onTap:(){
//     DateTime Date=showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(1990),
//         lastDate: DateTime(2060)) as DateTime;
//     setState(() {
//       date.text=DateFormat('yyyy-MM-dd').format(Date);
//     });
//   },
// ),

      ),
    );
  }
}
