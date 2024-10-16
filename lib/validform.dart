import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class validform extends StatefulWidget {
  const validform({Key? key}) : super(key: key);

  @override
  State<validform> createState() => _validformState();
}

class _validformState extends State<validform> {

  TextEditingController  name=new TextEditingController();
  var formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                labelText: "Enter name"
              ),
              validator: (val){
                if(val!.isEmpty)
                  {
                    return "Name is required";
                  }
                else if(!RegExp('^[a-zA-Z]').hasMatch(val))
                  {
                    return "Invalid name";
                  }
              },
            ),
            ElevatedButton(onPressed: (){
              formkey.currentState?.validate();
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
