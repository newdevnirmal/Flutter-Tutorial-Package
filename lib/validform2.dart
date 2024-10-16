import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class validform2 extends StatefulWidget {
  const validform2({Key? key}) : super(key: key);
  @override
  State<validform2> createState() => _validform2State();
}
String ? value="";
TextEditingController name=new TextEditingController();
TextEditingController password=new TextEditingController();
TextEditingController conformpassword=new TextEditingController();
TextEditingController Email=new TextEditingController();
TextEditingController Adhaar=new TextEditingController();
TextEditingController Phone=new TextEditingController();
var formkey=GlobalKey<FormState>();

class _validform2State extends State<validform2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Form(key: formkey,
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.blueAccent)
              ),
              child: Column(
                children: [
                  Text("Register",style:TextStyle (color: Colors.blue,fontSize: 40,fontWeight: FontWeight.w800),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.contact_page,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child:  TextFormField(
                            controller: name,
                            decoration: InputDecoration(
                                labelText: "Enter Username"
                            ),
                            validator: (val){

                              if(val!.isEmpty)
                              {
                                return "Username is required";
                              }
                              else if(!RegExp('^[a-z A-Z]').hasMatch(val))
                              {
                                return "Invalid name";
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.password,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child:  TextFormField(
                            obscureText: true,
                            controller: password,
                            decoration: InputDecoration(
                                labelText: "Create passowrd"
                            ),
                            validator: (val){

                              if(val!.isEmpty)
                              {
                                return "password is required";
                              }
                              else if(!RegExp('^[a-z A-Z0-9]').hasMatch(val))
                              {
                                return "Too simple Try again with more diverse and tough password";
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.password,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child:  TextFormField(
                            obscureText: true,
                            controller: conformpassword,
                            decoration: InputDecoration(
                                labelText: "Conform passowrd"
                            ),
                            validator: (val){

                              if(val!.isEmpty)
                              {
                                return "password Conformation required";
                              }
                              else if(password.text!=conformpassword.text)
                              {
                                return "check and repeat Conform password";
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                        children: [
                          Text("SELECT YOUR GENDER",style:TextStyle(color: Colors.blue.shade800,fontSize: 25,fontWeight: FontWeight.w800)),
                          Padding(
                            padding: const EdgeInsets.only(left:0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value:("MALE") ,
                                        groupValue: value,
                                        onChanged: (val){
                                          validator: (val){
                                            if(val!.isEmpty)
                                            {
                                              return "Gender Is is required";
                                            }
                                          };
                                          setState(() {
                                            value=val;

                                          });
                                        }),
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
                                            validator: (val){
                                              if(val!.isEmpty)
                                              {
                                                return "Gender Is is required";
                                              }
                                            };
                                          });
                                        }),
                                    Text("FEMALE"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: [
                        SizedBox(child: Icon(Icons.email,color: Colors.blueAccent,size: 60,)),
                        Container(
                          width: 300,
                          child:TextFormField(
                            controller: Email,
                            decoration: InputDecoration(
                                labelText: "Enter Email"
                            ),
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Email is required";
                              }
                              else if(!RegExp('^[a-zA-Z0-9]',).hasMatch(val))
                              {
                                return "Invalid Email";
                              }
                            },
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
                          child:TextFormField(
                            controller: Phone,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: "Enter Phone no"
                            ),
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Phone no is required";
                              }
                              else if(!RegExp('^[0-9]{10}',).hasMatch(val))
                              {
                                return "Invalid Number";
                              }
                            },
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
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.deepPurpleAccent)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 160), // Text(),Text(),Text(),Text(),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      formkey.currentState?.validate();
                      setState(() {
                      });
                    }, child:Text("SUBMIT")), Text(""),
                  ],
                ),
              ),
            ),
            Text(name.text,),
            Text(password.text),Text(Email.text),Text(Phone.text),
          ],
        )),
      )  ,);
  }
}
