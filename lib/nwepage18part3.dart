import 'package:flutter/material.dart';
class newpage18part3 extends StatefulWidget {
  const newpage18part3({Key? key}) : super(key: key);
  @override
  State<newpage18part3> createState() => newpage18part3State();
}
class newpage18part3State extends State<newpage18part3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Windows",style: TextStyle(color: Colors.white24,fontSize:50,fontWeight: FontWeight.normal),),
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
                  child: Image.asset("assets/images/win11.jpeg",),
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
                      title: Center(child: Text("Windows")),
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
                      title: Center(child: Text("Type")),
                    ),
                  ),   Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("Closed source")),
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
                      title: Center(child: Text("Ownership:")),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        side: BorderSide(width: 10,color: Colors.grey),
                      ),
                      tileColor: Colors.red,
                      title: Center(child: Text("Microsoft")),
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
                      subtitle: Center(child: Text("Microsoft is the most popular Os in computers around the world"
                          "Even thou its closed sourced it allows for plenty of customization")),
                    ),
                  ),
                ],)
            ],
          ),

        )

    );
  }
}
