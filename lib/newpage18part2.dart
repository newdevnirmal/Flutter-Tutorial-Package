import 'package:flutter/material.dart';
class newpage18part2 extends StatefulWidget {
  const newpage18part2({Key? key}) : super(key: key);
  @override
  State<newpage18part2> createState() => newpage18part2State();
}
class newpage18part2State extends State<newpage18part2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IOS",style: TextStyle(color: Colors.white24,fontSize:50,fontWeight: FontWeight.normal),),
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
                  child: Image.asset("assets/images/ios.jpeg",),
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
                      title: Center(child: Text("IOS")),
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
                      title: Center(child: Text("Apple.inc")),
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
                      subtitle: Center(child: Text("Ios is an operating system specifically made for i phones"
                          "Ios is a commonly used os by many people ""IOS is known for better safety but Lack of customization and features")),
                    ),
                  ),
                ],)
            ],
          ),

        )

    );
  }
}
