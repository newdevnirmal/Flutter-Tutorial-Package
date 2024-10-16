import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage11 extends StatefulWidget {
  const newpage11({Key? key}) : super(key: key);

  @override
  State<newpage11> createState() => _newpage11State();
}

class _newpage11State extends State<newpage11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nirmals app",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
          leading: Icon(Icons.home_work_sharp),
          backgroundColor: Colors.black54,
          actions: [
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                // SizedBox(height: 20,),
                Container(
                  height: 300,
                  width: 500,
                  child: Image.asset("assets/images/pic1.jpg",
                    fit: BoxFit.fill,),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 10,color: Colors.black)
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                    child: Image.asset("assets/images/batman.png",fit:BoxFit.fill),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 10,color: Colors.black)
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                    child: Image.asset("assets/images/pic2.jpg",fit:BoxFit.fill),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 10,color: Colors.black)
                  ),
                ),
                Container(
                  height: 400,
                  width: 500,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmof-KIuXeOvRPfI8iQZgXBatUO6Ojohrfwg&s",fit: BoxFit.fill,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 10,color: Colors.black)
                    )
                ) ,
                Container(
                  height: 400,
                  width: 500,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqGrvEplzLGJ3l9GZd8_8Uk9qMsoG8wY4V4w&s",fit: BoxFit.fill,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 10,color: Colors.black)
                    )
                ),
                Container(
                  height: 800,
                  width: 400,
                    child: Image.asset("assets/images/japan.png",fit: BoxFit.fill,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 10,color: Colors.black)
                    )
                ),
                Container(
                  height: 600,
                  width: 400,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsZX7S6cmraA1uTR6D_Ic3UVd_DU39VQeSwA&s",fit: BoxFit.fill,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 10,color: Colors.black)
                    )
                ),
              ]
          ),
        )
    );
  }
}
