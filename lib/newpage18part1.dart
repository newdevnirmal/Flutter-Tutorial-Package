import 'package:flutter/material.dart';
class newpage18part1 extends StatefulWidget {
  const newpage18part1({Key? key}) : super(key: key);
  @override
  State<newpage18part1> createState() => newpage18part1State();
}
class newpage18part1State extends State<newpage18part1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Linux",style: TextStyle(color: Colors.white24,fontSize:50,fontWeight: FontWeight.normal),),
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
                  child: Image.asset("assets/images/linux.jpeg",),
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
                      title: Center(child: Text("Linux")),
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
                      title: Center(child: Text("Open source")),
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
                      title: Center(child: Text("Public")),
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
                      subtitle: Center(child: Text("Linux is a Free and open sourced operating system invented by Linus torwards"
                          " Linux is not a commonley used os ,its mostly used by teckys and hackers")),
                    ),
                  ),
                ],)
            ],
          ),

        )

    );
  }
}
