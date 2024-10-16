import 'package:flutter/material.dart';
class newpage12 extends StatefulWidget {
  const newpage12({Key? key}) : super(key: key);
  @override
  State<newpage12> createState() => _newpage12State();
}
class _newpage12State extends State<newpage12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("warriors",style: TextStyle(color: Colors.white24,fontSize:50,fontWeight: FontWeight.normal),),
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
                  child: Image.asset("assets/images/japan.png",),
                  color: Colors.black,
                ),
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(width: 10,color: Colors.grey),
                ),
                tileColor: Colors.red,
                title: Center(child: Text("Ninja")),
                subtitle: Center(child: Text("Japanese Assasins with special skills who are farmers turned fighters,"
                    "they use modified farming equipment as wepons and use the night time for stealth")),
                leading: Icon(Icons.auto_awesome_sharp,size: 50,),
                trailing: Icon(Icons.bolt,size: 50,),
              ),
              Container(
                height: 400,
                width: 300,
                child: Image.asset("assets/images/Vikings.jpg",),
                color: Colors.black,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(width: 10,color: Colors.grey),
                ),
                tileColor: Colors.red,
                title: Center(child: Text("Vikings")),
                subtitle: Center(child: Text("The Vikings are Sweedish origin warriors aka norsemen,Vikings are known for their Big Body Size and Very Manly Treditions,Vikings Lived Between 5th to 11th centuary")),
                leading: Icon(Icons.colorize_sharp,size: 50,),
                trailing: Icon(Icons.construction,size: 50,),
              ),
              Container(
                height: 400,
                width: 300,
                child: Image.asset("assets/images/spartans.jpg",),
                color: Colors.black,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(width: 10,color: Colors.grey),
                ),
                tileColor: Colors.red,
                title: Center(child: Text("Spartans(Hopolites)")),
                subtitle: Center(child: Text("The hoplite was a heavily armed ancient Greek foot soldier who fought in close formation. Their primary function was to create a solid front, acting almost like a wall of men. Equipped with a helmet, breastplate, leg armor, and a large shield, hoplites were formidable warriors. ")),
                leading: Icon(Icons.shield,size: 50,),
                trailing: Icon(Icons.groups,size: 50,),
              ),
            ],
          ),
        )

    );
  }
}
