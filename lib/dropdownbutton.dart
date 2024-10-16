import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dropdownbutton extends StatefulWidget {
  const dropdownbutton({Key? key}) : super(key: key);

  @override
  State<dropdownbutton> createState() => _dropdownbuttonState();
}
var Gender='Male';
var items=[
'Male',
'Female',
];
class _dropdownbuttonState extends State<dropdownbutton> {
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55,top: 30),
                    child: Row(
                      children: [
                        DropdownButton(
                          value: Gender,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items)
                            );
                          }).toList(),
                          onChanged: (String ? val)
                          {
                            setState(() {
                              Gender=val!;
                            });
                          },
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
                    TextButton(onPressed: (){}, child:Text("SUBMIT")),
                    TextButton(onPressed: (){}, child:Text("CANCEL")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
