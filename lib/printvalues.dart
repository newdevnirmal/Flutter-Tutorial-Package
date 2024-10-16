import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class printvalues extends StatefulWidget {
  const printvalues({Key? key}) : super(key: key);

  @override
  State<printvalues> createState() => _printvaluesState();
}
late String name="Not entered";
late String email="Not entered";
late String adhaar="Not entered";
late String phone="Not entered";

class _printvaluesState extends State<printvalues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        leading: Icon(Icons.assignment_rounded),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.lightBlue)
              ),
              child: Column(
                children: [
                  Text("Sign Up",style: TextStyle(color: Colors.teal,fontSize: 40,fontWeight: FontWeight.w800),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.contact_page,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Name",
                                labelText: "Name"
                            ),
                            onChanged: (value)=>name=value,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 30),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.email,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Email",
                                labelText: "Email"
                            ),
                            onChanged: (value)=>email=value,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 30),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.perm_identity,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Adhaar Number",
                                labelText: "Adhaar"
                            ),
                            onChanged: (value)=>adhaar=value,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 30),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.phone,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Phone Number",
                                labelText: "Phone"
                            ),
                            onChanged: (value)=>phone=value,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.purple)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      setState(() {
                      });
                    }, child:Text("SUBMIT")), Text(""),
                    TextButton(onPressed: (){
                    }, child:Text("CANCEL")),
                  ],
                ),
              ),
            ),
            Text(name),Text(email),Text(adhaar),Text(phone), ],
        ),
      ),
    );
  }
}
