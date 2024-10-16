import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class datepicker2 extends StatefulWidget {
  const datepicker2({Key? key}) : super(key: key);

  @override
  State<datepicker2> createState() => _datepicker2State();
}
TextEditingController date=new TextEditingController();
var DATE;
class _datepicker2State extends State<datepicker2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: TextFormField(
            controller: date,
            onTap: ()async{
              DateTime DATE=await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2060)) as DateTime;
              setState(() {
                date.text=DateFormat('yyyy-MM-dd').format(DATE);
              });
            },
          ),
        ),
      )
      ),
    );
  }
}
