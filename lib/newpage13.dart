import 'package:flutter/material.dart';
class newpage13 extends StatefulWidget {
  const newpage13({Key? key}) : super(key: key);
  @override
  State<newpage13> createState() => _newpage13State();
}
class _newpage13State extends State<newpage13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile",style: TextStyle(color: Colors.white24,fontSize:50,fontWeight: FontWeight.normal),),
          // leading: Icon(Icons.home_work),
          backgroundColor: Colors.red,
          actions: [
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 400,
                  width: 300,
                  child: Image.asset("assets/images/spiderman.png",),
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("Name:")),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("Spiderman")),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("Age :")),
                    ),
                  ),   Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("23")),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("Address:")),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("New york,Queens")),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("About:")),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      subtitle: Center(child: Text("i am a hero born and raised in newyork queens "
                          " people call me the friendly neibhorhood spiderman")),
                    ),
                  ),
                ],)
            ],
          ),

        )

    );
  }
}
