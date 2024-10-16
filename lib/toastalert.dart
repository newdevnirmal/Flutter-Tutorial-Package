import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class toastalert extends StatefulWidget {
  const toastalert({Key? key}) : super(key: key);
  @override
  State<toastalert> createState() => _toastalertState();
}
String ? value="";
var States='Kasargod';
var items=[
  'Kasargod',
  'Kannur',
  'Kozhikkode',
  'Wayanadu',
  'Malappuram',
  'Palakkad',
  'Thrissur',
  'Eranakulam',
  'Idukki',
  'Kottayam',
  'Alappuzha',
  'Pathanamthitta',
  'Kollam',
  'Thiruvananthapuram',
];
TextEditingController name=new TextEditingController();
TextEditingController Email=new TextEditingController();
TextEditingController Adhaar=new TextEditingController();
TextEditingController Phone=new TextEditingController();
class _toastalertState extends State<toastalert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page",style: GoogleFonts.play(fontSize: 25)),
        leading: Icon(Icons.assignment_rounded),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.deepOrangeAccent)
              ),
              child: Column(
                children: [
                  Text("Sign Up",style:GoogleFonts.italiana (color: Colors.teal.shade800,fontSize: 40,fontWeight: FontWeight.w800),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.contact_page,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: name,
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
                    padding: const EdgeInsets.only(left: 55,top: 10),
                    child: Row(
                      children: [
                        DropdownButton(
                          value: States,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items)
                            );
                          }).toList(),
                          onChanged: (String ? val)
                          {
                            setState(() {
                              States=val!;
                            });
                          },
                          onTap: (){
                            Fluttertoast.showToast(
                                msg: "select state"
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text("SELECT YOUR GENDER",style: GoogleFonts.italiana(color: Colors.teal.shade800,fontSize: 25,fontWeight: FontWeight.w800)),
                          Padding(
                            padding: const EdgeInsets.only(left:100),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value:("MALE") ,
                                        groupValue: value,
                                        onChanged: (val){
                                          setState(() {
                                            value=val;
                                          });
                                        },
                                    ),
                                    Text("MALE")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: "FEMALE",
                                        groupValue: value,
                                        onChanged: (val){
                                          setState(() {
                                            value=val;
                                          });
                                        }),
                                    Text("FEMALE")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.email,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: Email,
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.perm_identity,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: Adhaar,
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
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.phone,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: Phone,
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
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.deepOrange)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 120), // Text(),Text(),Text(),Text(),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      Fluttertoast.showToast(
                        msg: "Sign up Completed"
                    );
                      setState(() {
                      });
                    }, child:Text("SUBMIT")), Text(""),
                  ],
                ),
              ),
            ),
            Text(name.text,),
            Text(value!),
            Text(Email.text),Text(Adhaar.text),Text(Adhaar.text),Text(States)
          ],
        ),
      ),
    );
  }
}
